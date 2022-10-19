class BookClub < ActiveRecord::Base
  validates :name, presence: true

  # has_many :members

  has_many :registrations
  has_many :members, through: :registrations

  # def members 
  #   Member.where(book_club_id: id)
  # end
end

# book_club_one = BookClub.find_by(name: "Cool Club")
# book_club_one.members 