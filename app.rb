require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do

    erb :index
  end

  get '/new' do

    erb :create_puppy
  end

  post '/new' do
    @new_puppy = Puppy.new(params[:puppy_name], params[:puppy_breed], params[:puppy_age])

    erb :display_puppy
  end


end
