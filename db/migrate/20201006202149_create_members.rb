class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |table|
      table.string :first_name, null: false
      table.string :last_name, null: false
      table.string :email, null: false, unique: true
      table.text :bio
      table.string :favorite_book
      table.boolean :leader, null: false, default: false

      table.belongs_to :book_club

      table.timestamps
    end
  end
end