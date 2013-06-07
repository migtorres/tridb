class CreateTipoProvas < ActiveRecord::Migration
  def change
    create_table :tipo_provas do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
