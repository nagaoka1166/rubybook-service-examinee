class ChanegeColumnDateToPost < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :experment_period, :string
    change_column :posts, :recruitment_period, :date
  end
end
