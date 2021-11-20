class ChanegeColumnNullToPost < ActiveRecord::Migration[6.1]
  def change
    change_column_null :posts, :experment_period, false, 0
  end
end
