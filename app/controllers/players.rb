get '/player/new' do
	@player = Player.new
  erb :"player/new"
end

post '/player' do
	@player = Player.new(email: params[:email],
					password: params[:password],
					password_confirmation: params[:password_confirmation])
	if @player.save
		session[:player_id] = @player.id
		redirect to('/')
	else
		flash[:errors]= @player.errors.full_messages
		erb :"player/new"
	end
end