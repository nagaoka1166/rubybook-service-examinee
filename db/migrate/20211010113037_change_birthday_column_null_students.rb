class ChangeBirthdayColumnNullStudents < ActiveRecord::Migration[6.1]
  def change
    change_column_null :students, :birthday, false, 0
  end
end
