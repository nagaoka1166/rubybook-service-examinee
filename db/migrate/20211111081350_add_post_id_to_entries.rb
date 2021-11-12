class AddPostIdToEntries < ActiveRecord::Migration[6.1]
  def change
    add_reference :entries, :post, foreign_key: true
  end
end
