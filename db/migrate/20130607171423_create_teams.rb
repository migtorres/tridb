class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :address
      t.integer :city_id
      t.string :country_iso
      t.string :site
      t.string :facebook
      t.integer :location_id

      t.timestamps
    end
  end
end
