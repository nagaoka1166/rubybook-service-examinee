class ChangeBirthdayColumnDefaultToStudents < ActiveRecord::Migration[6.1]
  def change
    change_column_default :students, :birthday, from: nil, to: "20000101"
  end
end
