class BookClub < ActiveRecord::Base 
    validates :location, presence: true 
    validates :name, uniqueness: true 
    validates :maximum_membership_count, numericality: { 
        only_integer: true, 
        less_than_or_equal_to: 50,
        greater_than_or_equal_to: 5,
        allow_nil: true
    }

end