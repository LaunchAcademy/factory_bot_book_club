class Member < ActiveRecord::Base 
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :leader, presence: true
  validates :book_club_id, presence: true

  validates :email, uniqueness: true

  validates :bio, length: { minimum: 0, maximum: 500 }, allow_blank: true

  # validates :leader, inclusion: { in: [true, false] }

  validates :book_club_id, numericality: { only_integer: true }
end
