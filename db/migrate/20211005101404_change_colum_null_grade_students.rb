class ChangeColumNullGradeStudents < ActiveRecord::Migration[6.1]
  def change
    change_column_null :students, :grade, false, 0
  end
end
