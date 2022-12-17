class ChangeContenttypeColumnDefaultUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_default :users, :content_type, from: nil, to: 0
  end
end
