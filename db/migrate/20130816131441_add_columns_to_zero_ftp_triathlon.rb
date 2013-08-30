class AddColumnsToZeroFtpTriathlon < ActiveRecord::Migration
  def change
    add_column :import_zero_ftp_triathlons, :place, :integer
    add_column :import_zero_ftp_triathlons, :ftp_number, :integer
    add_column :import_zero_ftp_triathlons, :ftp_license, :integer
    add_column :import_zero_ftp_triathlons, :athlete_name, :text
    add_column :import_zero_ftp_triathlons, :pen, :string
    add_column :import_zero_ftp_triathlons, :age_group_name, :string
    add_column :import_zero_ftp_triathlons, :team, :string
    add_column :import_zero_ftp_triathlons, :race_time, :time
    add_column :import_zero_ftp_triathlons, :import_results_from_url_id, :integer

  end
end
