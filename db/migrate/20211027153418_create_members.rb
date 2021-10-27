class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :favorite_book
      t.boolean :leader, null: false
      t.text :bio 
      t.belongs_to :book_club, null: false
    end
  end
end