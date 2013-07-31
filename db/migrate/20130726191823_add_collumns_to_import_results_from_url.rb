class AddCollumnsToImportResultsFromUrl < ActiveRecord::Migration
  def change
    add_column :import_results_from_urls, :race_type_id, :integer
    add_column :import_results_from_urls, :competition_id, :integer
    add_column :import_results_from_urls, :global_race_id, :integer
  end
end
