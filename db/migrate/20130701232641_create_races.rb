class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.integer :location_id
      t.integer :type_id
      t.string :name
      t.date :date
      t.integer :competition_id
      t.integer :sport_id
      t.integer :global_race_id

      t.timestamps
    end
  end
end
