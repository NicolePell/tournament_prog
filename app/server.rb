require 'sinatra'
require 'data_mapper'
require 'rack-flash'
require 'sinatra/partial'
require './app/models/player'
require_relative 'data_mapper_setup'
require_relative 'helpers/application'
require_relative 'helpers/session'
require_relative 'controllers/application'
require_relative 'controllers/players'
require_relative 'controllers/sessions'

include SessionHelpers

set :views, Proc.new { File.join(root, "views") }
enable :sessions
set :session_secret, 'super secret'
use Rack::Flash
set :partial_template_engine, :erb
set :public_folder, 'public'

