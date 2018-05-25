class ChangeFunction < ApplicationRecord
  belongs_to :branch
  belongs_to :cost_center
  belongs_to :user
end
