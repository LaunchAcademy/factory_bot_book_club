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

get '/book_clubs/new' do
  erb :"book_clubs/new"
end

get '/book_clubs/:id' do
  @book_club = BookClub.find(params["id"])
  @members = @book_club.members
  erb :'book_clubs/show'
end

post "/book_clubs" do 
  # binding.pry
  @name = params["name"]
  @location = params["location"]
  new_book_club = BookClub.new(name: params["name"], location: params["location"])

  if new_book_club.save
    redirect "/book_clubs"
  else
    # binding.pry
    @errors = new_book_club.errors.full_messages
    erb :"book_clubs/new"
  end
  
end