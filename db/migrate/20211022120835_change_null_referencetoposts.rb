class ChangeNullReferencetoposts < ActiveRecord::Migration[6.1]
  def change
    change_column_null :posts, :researcher_id, false
  end
end
