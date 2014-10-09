require 'data_mapper'

class Player

	include DataMapper::Resource

	property :id, Serial
	property :name, String
	property :games_played, Integer
	property :games_won, Integer
	property :score_difference, Integer
	property :points, Integer
	property :group_assign, String

end
