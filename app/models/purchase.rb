class Purchase < ApplicationRecord

  enum status: {
    expected: 0,
    done: 1,
    cancelada:2     
  } 

  belongs_to :construction
  belongs_to :provider
  belongs_to :sub_stage

  has_many :purchase_items, dependent: :destroy
  accepts_nested_attributes_for :purchase_items, allow_destroy: true

 

  
end
