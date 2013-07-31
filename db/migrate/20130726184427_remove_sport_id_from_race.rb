class RemoveSportIdFromRace < ActiveRecord::Migration
  def change
    remove_column :races, :sport_id, :integer
  end
end
