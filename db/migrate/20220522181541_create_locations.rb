class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.float :longitude
      t.float :latitude
      t.string :street
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
