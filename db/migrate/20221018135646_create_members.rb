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

      t.timestamps
    end
  end
end
