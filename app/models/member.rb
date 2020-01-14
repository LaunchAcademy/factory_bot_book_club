class Member < ActiveRecord::Base
  belongs_to :book_club

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :book_club_id, presence: true
end
