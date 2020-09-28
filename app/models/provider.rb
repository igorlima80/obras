class Provider < ApplicationRecord
    has_many :addresses, dependent: :destroy, as: :addressable
    has_many :phones, dependent: :destroy, as: :phonable
    has_many :bank_accounts, dependent: :destroy, as: :accountable

    accepts_nested_attributes_for :addresses, allow_destroy: true
    accepts_nested_attributes_for :phones, allow_destroy: true
    accepts_nested_attributes_for :bank_accounts, allow_destroy: true
end
