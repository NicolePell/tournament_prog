require_relative './models/player.rb'


env = ENV["DATABASE_URL"] || "development"

DataMapper.setup(:default, "postgres://localhost/tournament_manager_#{env}")

DataMapper.finalize

DataMapper.auto_upgrade!
