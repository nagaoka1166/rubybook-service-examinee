class AddClomnUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :type, :integer, null: false
  end
end
