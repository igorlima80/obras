class PurchaseItem < ApplicationRecord
  belongs_to :material
  belongs_to :purchase

  monetize :unity_price_cents
end
