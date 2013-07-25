class CreateImportResultsFromUrls < ActiveRecord::Migration
  def change
    create_table :import_results_from_urls do |t|
      t.text :url
      t.text :type
      t.string :quantity

      t.timestamps
    end
  end
end
