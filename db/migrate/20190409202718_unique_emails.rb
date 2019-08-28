class UniqueEmails < ActiveRecord::Migration
  def change
    add_index :members, :email
  end
end
