class Vacation < ApplicationRecord
  belongs_to :company
  belongs_to :branch
  belongs_to :cost_center
end
