class Registration < ActiveRecord::Base 
    belongs_to :book_club
    belongs_to :member 

#    validates :book_club_id, presence: true
#    validates :member_id, presence: true
end