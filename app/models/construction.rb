class Construction < ApplicationRecord
  
  enum pattern: {
        popular: 0,
        medium: 1,
        high: 2        
  } 
  
  monetize :expected_budget_cents
  
  belongs_to :construction_type
  belongs_to :workplace

  has_many :addresses, dependent: :destroy, as: :addressable
  accepts_nested_attributes_for :addresses

  has_many :documents, dependent: :destroy, as: :documentable
  accepts_nested_attributes_for :documents

  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks

  has_many :work_diaries, dependent: :destroy
  accepts_nested_attributes_for :work_diaries

  has_and_belongs_to_many :employments, dependent: :destroy

  def full_description
    "#{self.workplace.name} - #{self.construction_type.name} - #{self.area} m² - #{self.name} " 
  end

end
