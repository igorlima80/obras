class TaxRange < ApplicationRecord
  belongs_to :tax
  monetize :minimum_value_cents
end
