class AddColumBirthdayStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :birthday, :date
  end
end
