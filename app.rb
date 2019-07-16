require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/create_puppy' do
        erb :create_puppy
    end

    post '/display_puppy' do
        @name = params[:name]
        @breed = params[:breed]
        @months_old = params[:age]

        Puppy.new(@name, @breed, @months_old)

        erb :display_puppy
    end

end
