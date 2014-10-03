require 'sinatra/base'

class TableTennisTourny < Sinatra::Base	
	set :views, Proc.new { File.join(root, "..", "views") }
	set :public_folder, settings.root + '/../public/'

  get '/' do
    
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
