class BookClub < ActiveRecord::Base
  has_many :members

  validates :name, presence: true, uniqueness: true
end
