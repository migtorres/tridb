class CreateGlobalRaces < ActiveRecord::Migration
  def change
    create_table :global_races do |t|
      t.string :name

      t.timestamps
    end
  end
end
