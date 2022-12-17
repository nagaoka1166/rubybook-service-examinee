class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :name, default: "", null: false
      t.string :mail_adress, default: "", null: false
      t.string :phone, null: false
      t.integer :age, default: 0, null: false

      t.timestamps
    end
  end
end
