class CostCenter < ApplicationRecord
  belongs_to :branch
  belongs_to :company
end
