require 'sinatra'
require_relative 'config/application'

set :bind, '0.0.0.0'  # bind to all interfaces

enable :sessions

get '/members' do
  # ...
  
  erb :"members/index"
end

get '/book_clubs' do
  # ...

  erb :"book_clubs/index"
end

get '/book_clubs/:id' do
  # ...

  erb :'book_clubs/show'
end