class CreateImportShortFtpTriathlons < ActiveRecord::Migration
  def change
    create_table :import_short_ftp_triathlons do |t|
      t.integer :place
      t.integer :ftp_number
      t.integer :ftp_license
      t.text :athlete_name
      t.text :pen
      t.text :age_group_name
      t.string :team
      t.integer :swimming_position
      t.time :swimming_time
      t.integer :cycling_position
      t.time :cycling_time
      t.integer :running_position
      t.time :running_time
      t.time :race_time

      t.timestamps
    end
  end
end
