env = ENV["RACK_ENV"] || "development"

DataMapper.setup(:default, "postgres://localhost/tournament_manager_#{env}")

require '.lib/player'

DataMapper.finalize

DataMapper.auto_upgrade!

