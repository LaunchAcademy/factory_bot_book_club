class AddMaximimMembershipToBookClubs < ActiveRecord::Migration[6.1]
  def change
    add_column :book_clubs, :maximum_membership_count, :integer
  end
end
