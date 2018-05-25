class CreateChangeFunctions < ActiveRecord::Migration[5.2]
  def change
    create_table :change_functions do |t|
      t.references :branch, foreign_key: true
      t.string :collaborator
      t.references :cost_center, foreign_key: true
      t.string :current_position
      t.string :new_position
      t.date :date_change
      t.integer :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
