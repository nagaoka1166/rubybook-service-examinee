class ChangeColumnNullToActive < ActiveRecord::Migration[6.1]
  def change
    change_column_null :posts, :is_active, null: false
  end
end
