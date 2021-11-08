class AddUserIdToEntries < ActiveRecord::Migration[6.1]
  def change
    add_reference :entries, :user, foreign_key: true
  end
end
