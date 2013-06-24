class CreateTriathlonRaces < ActiveRecord::Migration
  def change
    create_table :triathlon_races do |t|
      t.date :date
      t.time :hour
      t.string :type
      t.float :swimming_distance
      t.float :cycling_distance
      t.float :running_distance
      t.integer :location_id
      t.integer :competition_id

      t.timestamps
    end
  end
end
