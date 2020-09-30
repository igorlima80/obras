class Purchase < ApplicationRecord
  belongs_to :construction
  belongs_to :provider
  belongs_to :sub_stage
end
