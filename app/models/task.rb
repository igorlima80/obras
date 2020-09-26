class Task < ApplicationRecord

  enum status: {
    registered: 0,
    initiated: 1     
  } 

  belongs_to :task_type
  belongs_to :construction

  monetize :budget_amount_cents
  monetize :cost_cents
  
end
