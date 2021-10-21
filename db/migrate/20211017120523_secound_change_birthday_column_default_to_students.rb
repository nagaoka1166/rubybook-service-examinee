class SecoundChangeBirthdayColumnDefaultToStudents < ActiveRecord::Migration[6.1]
  def change
      change_column_default :students, :birthday, from: "20000101", to: 20000101
  end
end
