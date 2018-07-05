require_relative 'config/environment'
#this is the controller
class App < Sinatra::Base
  get '/' do
   erb :index
  end

  get "/new" do
   erb :create_puppy
  end

  post '/' do
    @puppy = Puppy.new
  
   erb :display_puppy
  end

end
