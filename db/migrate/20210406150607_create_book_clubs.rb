class CreateBookClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :book_clubs  do |table|
      table.string :name, null: false
      table.string :location, null: false

      table.timestamps null: false
    end
  end
end
