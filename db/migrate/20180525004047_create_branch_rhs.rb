class CreateBranchRhs < ActiveRecord::Migration[5.2]
  def change
    create_table :branch_rhs do |t|
      t.references :branch, foreign_key: true
      t.references :rh, foreign_key: true

      t.timestamps
    end
  end
end
