# require 'sinatra'
# require 'sinatra/activerecord'
#
# Dir['app/**/*.rb'].each { |file| require_relative file }
# set :views, 'app/views'
# set :environment, :development

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

get '/book_clubs/new' do
  @book_clubs = BookClub.all 
  erb :"book_clubs/new"
end

post '/book_clubs' do
    
  
end

# get '/book_clubs/:id' do
#   @book_club = BookClub.find(params[:id])
#   @members = @book_club.members 
  
#   #leader

#   erb :'book_clubs/show'
# end

# get '/members' do
#     # ar query
    
#   erb :"members/index"
# end