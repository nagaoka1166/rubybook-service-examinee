class ChanegeDefaultDateToPost < ActiveRecord::Migration[6.1]
  def change
    change_column_default :posts, :recruitment_period, Date.today
  end
end
