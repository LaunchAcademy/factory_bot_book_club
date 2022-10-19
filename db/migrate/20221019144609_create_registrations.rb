class CreateRegistrations < ActiveRecord::Migration[6.1]
  def change
    create_table :registrations do |t|
      # t.integer :book_club_id, null: false 
      t.belongs_to :book_club, null: false 
      # t.integer :member_id, null: false  
      t.belongs_to :member, null: false
      
      t.timestamps
    end
  end
end
