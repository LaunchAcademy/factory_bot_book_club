class Member < ActiveRecord::Base
  belongs_to :book_club

  validates :first_name, presence: true
end