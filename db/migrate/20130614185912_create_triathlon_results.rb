class CreateTriathlonResults < ActiveRecord::Migration
  def change
    create_table :triathlon_results do |t|
      t.integer :place
      t.integer :ftp_number
      t.integer :ftp_license
      t.integer :swimming_place
      t.time :swimming_time
      t.integer :transition_one_place
      t.time :transition_first_time
      t.integer :cycling_place
      t.time :cycling_time
      t.integer :transition_two_place
      t.time :transition_two_time
      t.integer :running_place
      t.time :running_time
      t.time :total_time
      t.time :difference
      t.integer :triathlon_race_id

      t.timestamps
    end
  end
end
