class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.integer :location_id
      t.integer :item_id
      t.integer :amount

      t.timestamps
    end
  end
end
