class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :caution
      t.string :restriction
      t.integer :project
      t.string :rabo
      t.string :testing_field
      t.datetime :experment_period
      t.string :meet_time
      t.string :reward
      t.string :item
      t.integer :count
      t.integer :is_active
      t.datetime :recruitment_period

      t.timestamps
    end
  end
end
