require 'data_mapper'
require 'bcrypt'
require_relative 'player'

class Game

	include DataMapper::Resource

	has n, :players, through: Resource

	property :id, 				Serial
	property :player_1_name, 	String
	property :player_2_name, 	String
	property :player_1_score, 	Integer
	property :player_2_score, 	Integer



end