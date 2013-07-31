class CreateRaceTypes < ActiveRecord::Migration
  def change
    create_table :race_types do |t|
      t.integer :sport_id
      t.string :name

      t.timestamps
    end
  end
end
