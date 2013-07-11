class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :race_id
      t.integer :athlete_id
      t.integer :classification_id
      t.integer :place
      t.time :time
      t.integer :age_group_id
      t.integer :class_id

      t.timestamps
    end
  end
end
