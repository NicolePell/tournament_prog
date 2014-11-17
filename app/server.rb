require 'sinatra'
require 'data_mapper'
require 'rack-flash'
require 'sinatra/partial'
require './app/models/player'
require './app/models/game'
require './app/models/ttt'
require_relative 'data_mapper_setup'
require_relative 'helpers/application'
require_relative 'helpers/session'
require_relative 'controllers/application'
require_relative 'controllers/players'
require_relative 'controllers/sessions'
require_relative 'controllers/finals'

include SessionHelpers

set :views, Proc.new { File.join(root, "app", "views") }
enable :sessions
set :session_secret, 'super secret'
use Rack::Flash
set :partial_template_engine, :erb
set :public_folder, 'public'
