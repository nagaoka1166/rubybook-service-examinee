class DeleteColumnToEntry < ActiveRecord::Migration[6.1]
  def change
    remove_column :entries, :name, :string
    remove_column :entries, :mail_adress, :string
  end
end
