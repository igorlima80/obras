class Tax < ApplicationRecord
    has_many :tax_ranges, dependent: :destroy
    accepts_nested_attributes_for :tax_ranges, allow_destroy: true
end
