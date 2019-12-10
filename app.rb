require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root
    end
    get '/new' do
      erb :new
    end
    post '/pirates' do
      @pirate = params[:pirate]
      @ship1 = params[:pirate][:ships][0]
      @ship2 = params[:pirate][:ships][1]
      erb :show
    end
  end
end
