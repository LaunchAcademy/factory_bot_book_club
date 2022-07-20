require 'sinatra'
require_relative 'config/application'

set :bind, '0.0.0.0'  # bind to all interfaces

enable :sessions

get '/members' do
  @members = Member.all
  
  erb :"members/index"
end

get '/book-clubs' do
  @book_clubs = BookClub.all

  erb :"book_clubs/index"
end

get '/book-clubs/new' do
  erb :"book_clubs/new"
end

post '/book-clubs' do
  name = params["name"]
  location = params["location"]
  
  new_club = BookClub.new(name: name, location: location)

  if new_club.save
    redirect "/book-clubs/#{new_club.id}"
  else  
    @errors = new_club.errors.full_messages.to_sentence
    erb :"book_clubs/new"
  end
end

get '/book-clubs/:id' do

  @book_club = BookClub.find(params[:id])
  @members = @book_club.members
  # @members = Member.where(book_club_id: @book_club.id)

  erb :'book_clubs/show'
end