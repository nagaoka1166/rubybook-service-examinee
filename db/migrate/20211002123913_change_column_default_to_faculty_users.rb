class ChangeColumnDefaultToFacultyUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_default :users, :faculty, from: nil, to: 0, limit: 1
  end
end
