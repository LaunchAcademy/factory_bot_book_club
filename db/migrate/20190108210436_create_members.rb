class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |table|
      table.string :first_name, null: false
      table.string :last_name, null: false
      table.string :email, null: false
      table.text :bio
      table.string :favorite_book

      table.boolean :leader, default: false
      table.belongs_to :book_club

      table.timestamps null: false
    end
  end
end
