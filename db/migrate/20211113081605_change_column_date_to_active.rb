class ChangeColumnDateToActive < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :is_active, :boolean
  end
end
