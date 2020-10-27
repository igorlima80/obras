class Construction < ApplicationRecord
  
  enum pattern: {
        popular: 0,
        medium: 1,
        high: 2        
  } 
  
  monetize :expected_budget_cents
  
  belongs_to :construction_type
  belongs_to :workplace
  belongs_to :person

  has_many :addresses, dependent: :destroy, as: :addressable
  accepts_nested_attributes_for :addresses

  has_many :documents, dependent: :destroy, as: :documentable
  accepts_nested_attributes_for :documents

  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks

  has_many :work_diaries, dependent: :destroy
  accepts_nested_attributes_for :work_diaries

  has_and_belongs_to_many :employments, dependent: :destroy

  has_many :projects, dependent: :destroy
  accepts_nested_attributes_for :projects

  has_many :purchases
  has_many :purchase_items, through: :purchases

  has_many :services
  

  def full_description
    "#{self.workplace.name} - #{self.construction_type.name} - #{self.area} m² - #{self.name} " 
  end

  after_create :create_tasks

  def create_tasks    

      self.construction_type.task_types.each do |tt|      
          puts "task type: "
          puts tt.name
          task = self.tasks.build
          task.status = "registered"
          task.task_type_id = tt.id
          self.save        
      end      
  end
  
  def percentual_of_execution
    self.tasks.average(:percentage)
  end

  def total_amount_spend
      self.purchase_items.sum(:total_price_cents) + self.services.sum(:total_price_cents)
  end  


end
