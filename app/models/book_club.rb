class BookClub < ActiveRecord::Base
    validates :name, presence: true 

    has_many :registrations 
    has_many :members, through: :registrations

    # def members 
    #     Member.where(book_club_id: id)
    # end

end
