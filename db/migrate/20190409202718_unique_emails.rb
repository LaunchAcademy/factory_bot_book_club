class UniqueEmails < ActiveRecord::Migration
  def up
    change_column :members, :email, :string, null: false, unique: true
  end
  
  def down
    change_column :members, :email, :string, null: false
  end
end
