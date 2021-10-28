class Member < ActiveRecord::Base 
  has_many :signups
  has_many :book_clubs, through: :signups

end