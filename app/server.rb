require 'data_mapper'
require 'sinatra'
require './lib/player'
require_relative 'data_mapper_setup'
require_relative 'helpers/application'




enable :sessions
set :session_secret, 'super secret'





get '/' do
	erb :index
end

get '/player/new' do
  erb :"player/new"
end

post '/player' do
	player = Player.create(email: params[:email],
					password: params[:password])
	session[:player_id] = player.id
	redirect to('/')
end