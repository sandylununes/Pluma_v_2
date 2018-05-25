class CreateChangeSalaries < ActiveRecord::Migration[5.2]
  def change
    create_table :change_salaries do |t|
      t.references :company, foreign_key: true
      t.string :collaborator
      t.references :cost_center, foreign_key: true
      t.decimal :salary_current
      t.decimal :new_salary
      t.date :date_change
      t.text :reason_change
      t.references :user, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
