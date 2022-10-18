require 'sinatra'
require_relative 'config/application'

set :bind, '0.0.0.0'  # bind to all interfaces

enable :sessions

get '/members' do
  @members = Member.all
  erb :"members/index"
end

get '/book_clubs' do
  @book_clubs = BookClub.all
  erb :"book_clubs/index"
end

get '/book_clubs/:banana' do
  binding.pry
  @book_club = BookClub.find(params["banana"])
  erb :'book_clubs/show'
end

post "/book_clubs" do 

end