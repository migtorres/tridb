class AddColumnImportResultsFromUrlIdToImportShortFtpTriathlon < ActiveRecord::Migration
  def change
    add_column :import_short_ftp_triathlons, :import_results_from_url_id, :integer
  end
end
