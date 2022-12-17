class AddResearcherIdToPosts < ActiveRecord::Migration[6.1]
  def change
    execute 'DELETE FROM Posts;'
    add_reference :posts, :researcher, null: false, index: true
  end
end
