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

get '/members' do
  @members = Member.all
  
  erb :"members/index"
end

get '/book_clubs' do
  @book_clubs = BookClub.all 

  erb :"book_clubs/index"
end

# get '/book_clubs/:id' do
#   @book_club = BookClub.find(params[:id])
#   @book_club_members = @book_club.members
#   @leader = @book_club_members.find_by(leader: true)

#   erb :'book_clubs/show'
# end


