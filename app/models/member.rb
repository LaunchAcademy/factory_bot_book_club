class Member < ActiveRecord::Base
  validates :first_name, :last_name, presence: true

  validates_presence_of :email, :leader, :book_club_id
  # validates_presence_of :email, :book_club_id

  # validates :leader, inclusion: { in: [true, false] }
end
