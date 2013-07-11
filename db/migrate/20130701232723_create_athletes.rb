class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.integer :ftp_number
      t.integer :ftp_license
      t.string :name
      t.string :full_name
      t.date :birth_date
      t.integer :team_id
      t.integer :location_id
      t.string :email
      t.string :facebook
      t.string :twitter
      t.string :url
      t.string :gender
      t.string :nationality

      t.timestamps
    end
  end
end
