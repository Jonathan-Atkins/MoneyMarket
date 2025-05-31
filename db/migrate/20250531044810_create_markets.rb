class CreateMarkets < ActiveRecord::Migration[8.0]
  def change
    create_table :markets do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
