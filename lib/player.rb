class Player

	include DataMapper::Resources

	property :id, Serial
	property :name, String
	property :games_played, Integer
	property :games_won, Integer
	property :score_difference, Integer
	property :points, Integer
	property :group_assign, String

end
