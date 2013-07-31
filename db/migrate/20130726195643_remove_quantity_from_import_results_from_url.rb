class RemoveQuantityFromImportResultsFromUrl < ActiveRecord::Migration
  def change
    remove_column :import_results_from_urls, :quantity, :text
  end
end
