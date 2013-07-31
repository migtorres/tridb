class FixTypeName < ActiveRecord::Migration
  def change
   rename_column :import_results_from_urls, :type, :import_type
  end
end
