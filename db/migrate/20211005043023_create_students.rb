class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.integer :age
      t.integer :sex
      t.integer :grade
      t.references :user
      t.timestamps
    end
  end
end
