require 'sinatra/base'

class TableTennisTourny < Sinatra::Base	
	set :views, Proc.new { File.join(root, "..", "views") }
	set :public_folder, settings.root + '/../public/'



  get '/' do
    
    # competitors.names.shuffle.each_slice(6).to_a
    erb :index
  end

  get '/sign_up' do
  	erb :sign_up
  end


  post '/sign_up' do
  	@name = params[:name]
  	erb :sign_up
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
