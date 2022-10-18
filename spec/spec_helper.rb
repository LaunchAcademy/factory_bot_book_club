require 'pry'
require 'rspec'
require 'capybara/rspec'
require 'database_cleaner'
require 'factory_bot'

# require our factories, if we are using them
require_relative 'support/factories'

require_relative '../server.rb'

# ensures there is a test and development environment 
set :environment, :test

# ensure capybara loads any config from server.rb, including ActiveRecord
Capybara.app = Sinatra::Application

# ignore
ActiveRecord::Base.logger = nil

# ensures that between each spec, our database is wiped
RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

#   config.around(:each) do |example|
#     DatabaseCleaner.cleaning do
#       example.run
#     end
#   end
end
