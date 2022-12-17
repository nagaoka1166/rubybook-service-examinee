class ChangeColumnNullToIsactive < ActiveRecord::Migration[6.1]
  def change
    change_column_null :posts, :is_active, null: false
    change_column_default :posts, :is_active, default: false
  end
end
