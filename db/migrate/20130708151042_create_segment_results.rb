class CreateSegmentResults < ActiveRecord::Migration
  def change
    create_table :segment_results do |t|
      t.integer :athlete_id
      t.integer :segment_id
      t.integer :place
      t.time :time
      t.integer :age_group_id
      t.integer :class_id

      t.timestamps
    end
  end
end
