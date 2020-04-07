class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false, unique: true
      t.text :bio
      t.string :favorite_book
      t.boolean :leader, default: false
      t.belongs_to :book_club

      t.timestamps
    end
  end
end
