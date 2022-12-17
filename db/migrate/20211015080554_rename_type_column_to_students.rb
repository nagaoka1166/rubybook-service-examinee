class RenameTypeColumnToStudents < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :type, :content_type
  end
end
