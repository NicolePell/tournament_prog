get '/sessions/new' do

  erb :"sessions/new"
end

post '/sessions' do
  email, password, name = params[:email], params[:password], params[:name]
  @player = Player.authenticate(email, password)

  if @player
    session[:player_id] = @player.id
    session[:player_name] = @player.name

    redirect to('/')

  else

    flash[:errors] = ["The email or password is incorrect"]

    erb :"sessions/new"
  end

end

delete '/sessions' do
  flash[:notice] = "Goodbye!"
  session[:player_id] = nil
  
  redirect '/'
end
