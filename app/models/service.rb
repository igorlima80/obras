class Service < ApplicationRecord
  belongs_to :service_type
  belongs_to :provider
  belongs_to :task_type
  belongs_to :construction

   
  monetize :total_price_cents
end
