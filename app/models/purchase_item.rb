class PurchaseItem < ApplicationRecord
  belongs_to :material
  belongs_to :purchase
end
