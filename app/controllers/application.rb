get '/' do
	erb :index
end

get '/groups' do
	@players = Player.all
	erb :groups
end