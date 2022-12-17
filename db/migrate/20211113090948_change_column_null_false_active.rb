class ChangeColumnNullFalseActive < ActiveRecord::Migration[6.1]
  def change
    change_column_null :posts, :is_active, false, 0
  end
end
