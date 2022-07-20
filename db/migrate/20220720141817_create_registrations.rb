class CreateRegistrations < ActiveRecord::Migration[6.1]
  def change
    create_table :registrations do |t|
      t.belongs_to :book_club, null: false
      # t.integer :book_club_id
      t.belongs_to :member, null: false
      # t.integer :member_id
      t.string :membership_level

      t.timestamps null: false
    end
  end
end
