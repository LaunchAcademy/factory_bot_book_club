class AddMaximimMembershipToBookClubs < ActiveRecord::Migration[6.1]
  def change
    add_column :book_clubs, :maximum_membership_count, :integer

    class BookClub < ActiveRecord::Base 
    end

    clubs = BookClub.all 

    clubs.each do |club| 

    end
  end
end
