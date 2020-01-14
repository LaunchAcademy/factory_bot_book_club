class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false, index: { unique: true }
      t.string :favorite_book
      t.text :bio

      t.boolean :leader, null: false, default: false
      t.belongs_to :book_club

      t.timestamps null: false
    end

    # add_index :members, :email, unique: true
  end
end
