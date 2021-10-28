class Signup < ActiveRecord::Base 
  belongs_to :book_club
  belongs_to :member

end