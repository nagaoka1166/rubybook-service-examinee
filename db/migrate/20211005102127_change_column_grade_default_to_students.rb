class ChangeColumnGradeDefaultToStudents < ActiveRecord::Migration[6.1]
  def change
    change_column_default :students, :grade, from: nil, to: 0
  end
end
