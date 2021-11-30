class ChangeDefaultStudentColumnGrade < ActiveRecord::Migration[6.1]
  def change
    change_column_default :students, :grade, nil
    change_column_default :users, :faculty, nil
  end
end
