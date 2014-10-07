class Player

  include DataMapper::Resource


  property :id,     		Serial
  property :name,			String
  property :games_played, 	Integer
  property :games_won,		Integer
  property :points,			Integer

  

end