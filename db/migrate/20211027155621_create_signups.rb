class CreateSignups < ActiveRecord::Migration[6.1]
  def change
    create_table :signups do |t| 
      t.belongs_to :member, null: false 
      t.belongs_to :book_club, null: false
    end
  end
end
