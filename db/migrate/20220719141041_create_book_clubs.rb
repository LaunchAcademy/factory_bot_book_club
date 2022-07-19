class CreateBookClubs < ActiveRecord::Migration[6.1]
  def change
    create_table(:book_clubs) do |t|
      t.string(:name, null: false)
      t.string :location

      t.timestamps null: false
    end
  end
end
