class CreateCostCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :cost_centers do |t|
      t.string :name
      t.references :branch, foreign_key: true
      t.references :company, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
