get '/sessions/new' do
	erb :"sessions/new"
end

post '/sessions' do
	email, password = params[:email], params[:password]
	player = Player.authenticate(email, password)
	if player
		session[:player_id] = player.id
		redirect to('/')
	else
		flash[:errors] = ["The email or password is incorrect"]
		erb :"sessions/new"
	end
end

delete '/sessions' do
  flash[:notice] = "Goodbye!"
  session[:user_id] = nil
  redirect '/'
end 