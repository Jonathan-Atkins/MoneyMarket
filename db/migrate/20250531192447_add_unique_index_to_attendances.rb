class AddUniqueIndexToAttendances < ActiveRecord::Migration[8.0]
  def change
    add_index :attendances, [:vendor_id, :market_id, :date], unique: true, name:'index_attendances_on_vendor_market_date'
  end
end
