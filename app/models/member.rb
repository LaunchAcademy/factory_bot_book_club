class Member < ActiveRecord::Base
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :leader, inclusion: [true, false]
    # validates :book_club_id, presence: true
    # validates :book_club_id, numericality: true

    has_many :registrations 
    has_many :book_clubs, through: :registrations

    # def book_club 
    #     BookClub.find(book_club_id)
    # end
end

# class Recipe 
#     validates :name, presence: true 
#     validates :rating, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
# end

# class Comment 
#     validates :body, presence: true 
#     validates :body, length: in: [1..140]
# end


# Recipe.where(name: "LIKE ?", "/brussels/")
# Recipe.where(name: "LIKE ?", "/brussels/")