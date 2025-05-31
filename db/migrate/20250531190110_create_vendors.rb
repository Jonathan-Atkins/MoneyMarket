class CreateVendors < ActiveRecord::Migration[8.0]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :category
      t.string :contact_number
      t.integer :lot_number
      t.integer :status

      t.timestamps
    end
  end
end
