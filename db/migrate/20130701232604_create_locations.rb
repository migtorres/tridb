class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :lat
      t.float :lon
      t.string :parish
      t.string :municipality
      t.string :region1
      t.string :region2
      t.string :country
      t.string :continent

      t.timestamps
    end
  end
end
