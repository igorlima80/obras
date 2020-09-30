class Stage < ApplicationRecord
    has_many :sub_stages, dependent: :destroy
    accepts_nested_attributes_for :sub_stages, allow_destroy: true
end
