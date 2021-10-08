class ChangeColumnGradeSexDefaultToStudents < ActiveRecord::Migration[6.1]
  def change
    change_column_default :students, :grade, from: nil, to: ""
    change_column_default :students, :sex, from: nil, to: ""
  end
end
