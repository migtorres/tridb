class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :location_id
      t.string :site
      t.string :facebook
      t.string :twitter

      t.timestamps
    end
  end
end
