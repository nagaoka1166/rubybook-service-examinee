class ChangeColomnNullReferencetoposts < ActiveRecord::Migration[6.1]
  def change
    change_column_null :posts, :researcher_id, :bigint, null: false
  end
end
