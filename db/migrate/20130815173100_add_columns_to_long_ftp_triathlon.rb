class AddColumnsToLongFtpTriathlon < ActiveRecord::Migration
  def change
    add_column :import_long_ftp_triathlons, :place, :integer
    add_column :import_long_ftp_triathlons, :ftp_number, :integer
    add_column :import_long_ftp_triathlons, :ftp_license, :integer
    add_column :import_long_ftp_triathlons, :athlete_name, :text
    add_column :import_long_ftp_triathlons, :pen, :string
    add_column :import_long_ftp_triathlons, :age_group_name, :string
    add_column :import_long_ftp_triathlons, :team, :string
    add_column :import_long_ftp_triathlons, :swimming_position, :integer
    add_column :import_long_ftp_triathlons, :swimming_time, :time
    add_column :import_long_ftp_triathlons, :transition_one_position, :integer
    add_column :import_long_ftp_triathlons, :transition_one_time, :time
    add_column :import_long_ftp_triathlons, :cycling_position, :integer
    add_column :import_long_ftp_triathlons, :cycling_time, :time
    add_column :import_long_ftp_triathlons, :transition_two_position, :integer
    add_column :import_long_ftp_triathlons, :transition_two_time, :time
    add_column :import_long_ftp_triathlons, :ruuning_position, :integer
    add_column :import_long_ftp_triathlons, :running_time, :time
    add_column :import_long_ftp_triathlons, :race_time, :time
    add_column :import_long_ftp_triathlons, :import_results_from_url_id, :integer
  end
end
