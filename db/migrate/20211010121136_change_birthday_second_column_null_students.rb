class ChangeBirthdaySecondColumnNullStudents < ActiveRecord::Migration[6.1]
  def change
    change_column_null :students, :birthday, false, 20000101
  end
end
