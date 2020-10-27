class Purchase < ApplicationRecord

  enum status: {
    expected: 0,
    done: 1,
    cancelada:2     
  } 

  belongs_to :construction
  belongs_to :provider
  belongs_to :task_type

  has_many :purchase_items, dependent: :destroy
  accepts_nested_attributes_for :purchase_items, allow_destroy: true

  after_create :sum_total_value

  def sum_total_value
    self.purchase_items.each do |item|
      item.total_price_cents = item.unity_price * item.amount
      
      item.save
    end  
  end

 

  
end
