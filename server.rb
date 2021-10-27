require 'sinatra'
require_relative 'config/application'

set :bind, '0.0.0.0'  # bind to all interfaces

enable :sessions

get "/" do 
    redirect "/book_clubs"
end


get '/book_clubs' do
    @book_clubs = BookClub.all
  
    erb :"book_clubs/index"  
end

post "/book_clubs" do 

end