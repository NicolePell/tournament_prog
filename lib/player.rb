require 'data_mapper'
require 'bcrypt'

class Player

	include DataMapper::Resource

	property :id, Serial
	property :name, String
	property :email, String
	property :games_played, Integer
	property :games_won, Integer
	property :score_difference, Integer
	property :points, Integer
	property :group_assign, String


	property :password_digest, Text

	def password=(password)
    	self.password_digest = BCrypt::Password.create(password)
  	end

end
