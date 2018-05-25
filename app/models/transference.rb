class Transference < ApplicationRecord
  belongs_to :cost_center
  belongs_to :user
  belongs_to :branch
  belongs_to :company
end
