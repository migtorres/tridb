class CreateAgeGroups < ActiveRecord::Migration
  def change
    create_table :age_groups do |t|
      t.integer :minimum_age
      t.integer :maximum_age
      t.integer :name

      t.timestamps
    end
  end
end
