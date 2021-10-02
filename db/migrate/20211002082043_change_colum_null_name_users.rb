class ChangeColumNullNameUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :name, false, 0
  end
end
