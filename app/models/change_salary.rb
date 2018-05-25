class ChangeSalary < ApplicationRecord
  belongs_to :company
  belongs_to :cost_center
  belongs_to :user
end
