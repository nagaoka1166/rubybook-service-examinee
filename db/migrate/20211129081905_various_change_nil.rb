class VariousChangeNil < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :faculty, :integer, null: true
    change_column :students, :grade, :integer, null: true
  end
end
