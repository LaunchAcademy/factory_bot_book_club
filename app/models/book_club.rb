class BookClub < ActiveRecord::Base 
  validates :name, presence: true 
  validates :location, presence: true

  has_many :members 
  
  # def members 
  #   Member.where(book_club_id: self.id)
  # end
end