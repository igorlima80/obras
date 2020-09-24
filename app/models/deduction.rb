class Deduction < ApplicationRecord
    has_many :deduction_ranges, dependent: :destroy
    accepts_nested_attributes_for :deduction_ranges, allow_destroy: true
end
