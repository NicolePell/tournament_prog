require 'data_mapper'
require 'bcrypt'
require 'dm-aggregates'
require_relative 'player'

class Game

  include DataMapper::Resource

  property :id, Serial
  property :player1_name, String
  property :player2_name, String
  property :player_1_score, Integer
  property :player_2_score, Integer
  property :winner_name, String

  has n, :players, through: Resource

end
