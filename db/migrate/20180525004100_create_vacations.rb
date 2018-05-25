class CreateVacations < ActiveRecord::Migration[5.2]
  def change
    create_table :vacations do |t|
      t.references :company, foreign_key: true
      t.references :branch, foreign_key: true
      t.references :cost_center, foreign_key: true
      t.string :collaborator
      t.date :first_date
      t.date :second_date
      t.date :third_date
      t.integer :first_quantity
      t.integer :second_quantity
      t.integer :third_quantity
      t.integer :allowance
      t.text :note
      t.integer :status

      t.timestamps
    end
  end
end
