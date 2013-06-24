class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :the_geom
      t.integer :sport_id
      t.integer :order
      t.integer :race_id

      t.timestamps
    end
  end
end
