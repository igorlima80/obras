class DeductionRange < ApplicationRecord
  belongs_to :deduction

  monetize :minimum_value_cents

end
