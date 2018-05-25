class CreateCompanyRhs < ActiveRecord::Migration[5.2]
  def change
    create_table :company_rhs do |t|
      t.references :company, foreign_key: true
      t.references :rh, foreign_key: true

      t.timestamps
    end
  end
end
