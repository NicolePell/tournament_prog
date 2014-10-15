require 'data_mapper'
require 'sinatra'
require 'rack-flash'
require './lib/player'
require_relative 'data_mapper_setup'
require_relative 'helpers/application'


enable :sessions
set :session_secret, 'super secret'
use Rack::Flash


get '/' do
	erb :index
end

get '/player/new' do
	@player = Player.new
  erb :"player/new"
end

post '/player' do
	@player = Player.new(email: params[:email],
					password: params[:password],
					password_confirmation: params[:password_confirmation])
	if @player.save
		session[:player_id] = @player.id
		redirect to('/')
	else
		flash[:errors]= @player.errors.full_messages
		erb :"player/new"
	end
end