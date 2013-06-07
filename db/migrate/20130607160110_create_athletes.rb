class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.integer :ftp_license
      t.string :name
      t.string :full_name
      t.date :birth_date
      t.integer :team_id
      t.string :country_iso
      t.integer :place_id
      t.string :email
      t.string :facebook
      t.string :twitter
      t.string :url
      t.integer :ftp_number

      t.timestamps
    end
  end
end
