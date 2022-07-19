class Member < ActiveRecord::Base
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :leader, inclusion: [true, false]
    validates :book_club_id, presence: true
    validates :book_club_id, numericality: true
end