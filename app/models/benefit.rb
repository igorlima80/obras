class Benefit < ApplicationRecord
  belongs_to :benefit_type
  belongs_to :employment

  monetize :value_cents
  
end
