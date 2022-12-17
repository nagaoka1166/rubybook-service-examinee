class SecoundChangeColumNullFacultyUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :faculty, false, 0
  end
end
