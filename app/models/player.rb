require 'data_mapper'
require 'bcrypt'
require 'dm-aggregates'
require_relative 'game'

class Player

	include DataMapper::Resource

	attr_reader :password
	attr_accessor :password_confirmation

	validates_confirmation_of :password, message: "Sorry, your passwords don't match"

	property :id, Serial
	property :name, String
	property :email, String, unique: true, message: "This email is already registered"
	property :games_played, Integer, default: 0
	property :games_won, Integer, default: 0 
	property :points, Integer, default: 0
	property :group_assign, String


	property :password_digest, Text

	has n, :games, through: Resource

	before :save, :grp_assign
		

	def password=(password)
		@password = password
    	self.password_digest = BCrypt::Password.create(password)
  	end

  def self.authenticate(email, password)
		player = first(email: email)
		if player && BCrypt::Password.new(player.password_digest) == password
				player
		else
				nil
		end
	end

	def grp_assign
		groups = %w(A A A A A A B B B B B B C C C C C C D D D D D D)
		shuffle_group = groups.shuffle
		self.group_assign = shuffle_group.pop
	end


end
