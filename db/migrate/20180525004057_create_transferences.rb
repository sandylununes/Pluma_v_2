class CreateTransferences < ActiveRecord::Migration[5.2]
  def change
    create_table :transferences do |t|
      t.string :new_cost_center
      t.string :old_cost_center
      t.references :cost_center, foreign_key: true
      t.integer :status
      t.integer :who_ask
      t.references :user, foreign_key: true
      t.string :collaborator
      t.string :new_branch
      t.string :old_branch
      t.references :branch, foreign_key: true
      t.string :new_company
      t.string :old_company
      t.references :company, foreign_key: true
      t.date :tranference_date
      t.string :old_city
      t.string :new_city

      t.timestamps
    end
  end
end
