get '/player/new' do
	@player = Player.new
  erb :"player/new"
end

post '/player' do

	@player = Player.create(email: params[:email],
					name: params[:name],
					password: params[:password],
					password_confirmation: params[:password_confirmation]
					)
	if @player.save
		session[:player_id] = @player.id
		session[:player_name] = @player.name
		redirect to('/')
	else
		flash[:errors]= @player.errors.full_messages
		erb :"player/new"
	end
end

# get '/player/profile' do
# 	@players = Player.all

# 	erb :"player/profile"

# end

get '/player/list' do
	@players = Player.all

	erb :"player/list"
end