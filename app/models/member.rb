class Member < ActiveRecord::Base
  validates :first_name, :last_name, presence: true

  validates_presence_of :email, :leader, :book_club_id
  # validates_presence_of :email, :book_club_id

  has_many :registrations
  has_many :book_clubs, through: :registrations

  validates :books_read, numericality: { greater_than_or_equal_to: 1 }, allow_nil: true

  # def book_club 
  #   BookClub.find(book_club_id)
  # end

  # validates :leader, inclusion: { in: [true, false] }
end
