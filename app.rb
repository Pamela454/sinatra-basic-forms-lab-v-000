require_relative 'config/environment'
#this is the controller
class App < Sinatra::Base
  get '/' do
   erb :index
  end

  get "/new" do
   erb :create_puppy


  post '/' do
    pup = Puppy.new
  @puppy = pup.initialize(params[:])
   erb :display_puppy
  end

end
