class ChangeDatetipeReferencetoposts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :researcher_id, :bigint
  end
end
