get '/finals' do
  @players = Player.all

  @groupA = @players.all(group_assign: "A")
  @groupB = @players.all(group_assign: "B")
  @groupC = @players.all(group_assign: "C")
  @groupD = @players.all(group_assign: "D")

  erb :finals
end
