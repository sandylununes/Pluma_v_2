class CreateDisconnexions < ActiveRecord::Migration[5.2]
  def change
    create_table :disconnexions do |t|
      t.string :collaborator
      t.references :cost_center, foreign_key: true
      t.string :charge
      t.date :date_admission
      t.text :observation
      t.integer :company_initiative
      t.integer :employee_initiative
      t.integer :agreed_disconexion
      t.integer :antecipation_contract
      t.integer :contract_term
      t.date :date_notice
      t.integer :readmission
      t.text :reason_not_readmission
      t.references :user, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
