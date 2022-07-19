class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t| 
      t.string :first_name, null: false 
      t.string :last_name, null: false 
      t.string :email, null: false 
      t.text :bio
      t.string :favorite_book 
      t.boolean :leader, null: false, default: false 
      t.integer :book_club_id, null: false

      t.timestamps null: false
    end
  end
end


# first_name (string, req)
# last_name (string, req)
# email (string, req)
# bio (long string)
# favorite_book (string)
# leader (boolean, req)
# book_club (integer, req)