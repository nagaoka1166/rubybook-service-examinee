class ChangeColumNullFacultyUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :faculty, from: nil, to: ""
  end
end
