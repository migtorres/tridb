class CreateRaceTypes < ActiveRecord::Migration
  def change
    create_table :race_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
