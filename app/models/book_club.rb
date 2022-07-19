class BookClub < ActiveRecord::Base
    validates :name, presence: true 

end
