class BookClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :book_clubs do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :location

      t.timestamps null: false
    end

    # add_index :book_clubs, :name, unique: true
  end
end
