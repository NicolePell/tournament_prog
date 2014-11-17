require_relative './models/player.rb'


env = ENV["RACK_ENV"] || "development"

DataMapper.setup(:default, ENV['DATABASE_URL'] "postgres://localhost/tournament_manager_#{env}")

DataMapper.finalize

DataMapper.auto_migrate!
