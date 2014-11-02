get '/' do
	erb :index
end

get '/groups' do
	@players = Player.all
	erb :groups
end

get '/data_entry' do
	@game = Game.new
	erb :"data_entry"
end

post '/data_entry' do
	@player_1 = Player.first(name: params[:player1_name])
	@player_2 = Player.first(name: params[:player2_name])

	@game = Game.new(player1_name: params[:player1_name],
						player2_name: params[:player2_name],
						player_1_score: params[:player_1_score],
						player_2_score: params[:player_2_score]
						)
	@game.players << @player_1
	@game.players << @player_2
	@game.save
	redirect to('/games')	
end

get '/games' do
	@games = Game.all
	@players = Player.all
	erb :"games"
end

get '/players/:name' do
	@player = Player.first(name: params[:name])
	
	@player1_games = Game.all(player1_name: params[:name])
	@player2_games = Game.all(player2_name: params[:name])

	@games = Game.all

	erb :"player/profile"
end