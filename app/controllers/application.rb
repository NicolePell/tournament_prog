get '/' do
  erb :index
end

get '/groups' do
  @players = Player.all(order: [:points.desc])

  erb :groups
end

get '/data_entry' do
  @game = Game.new
  @players = Player.all

  erb :"data_entry"
end

post '/data_entry' do
  @name1 = params[:player1_name].downcase.capitalize!
  @name2 = params[:player2_name].downcase.capitalize!
  @player_1 = Player.first(name: @name1)
  @player_2 = Player.first(name: @name2)

  @game = Game.new(player1_name: @name1,
                   player2_name: @name2,
                   player_1_score: params[:player_1_score],
                   player_2_score: params[:player_2_score]
                  )
  @game.players << @player_1
  @game.players << @player_2

  winner = @game.player_1_score > @game.player_2_score ? @player_1 : @player_2
  winner.games_won = winner.games_won + 1
  winner.points = winner.points + 2
  winner.save

  @player_1.games_played = @player_1.games_played + 1
  @player_2.games_played = @player_2.games_played + 1

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

get '/timetable' do
  @players = Player.all

  @groupA = @players.all(group_assign: "A")
  @groupB = @players.all(group_assign: "B")
  @groupC = @players.all(group_assign: "C")
  @groupD = @players.all(group_assign: "D")

  @groupA_comb = @groupA.combination(2).to_a.each_slice(1).to_a
  @groupB_comb = @groupB.combination(2).to_a.each_slice(1).to_a
  @groupC_comb = @groupC.combination(2).to_a.each_slice(1).to_a
  @groupD_comb = @groupD.combination(2).to_a.each_slice(1).to_a

  erb :timetable
end
