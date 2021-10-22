class AddResearcherReferencetoposts < ActiveRecord::Migration[6.1]
  def change
      add_reference :posts, :researcher, foreign_key: true
  end
end
