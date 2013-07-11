class CreateTeamYears < ActiveRecord::Migration
  def change
    create_table :team_years do |t|
      t.integer :athlete_id
      t.integer :team_id
      t.integer :year

      t.timestamps
    end
  end
end
