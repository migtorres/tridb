class CreateSegments < ActiveRecord::Migration
  def change
    create_table :segments do |t|
      t.integer :race_id
      t.integer :sport_id
      t.integer :order
      t.text :the_geom
      t.float :distance

      t.timestamps
    end
  end
end
