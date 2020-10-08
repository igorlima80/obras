class SubStage < ApplicationRecord
  belongs_to :stage
  has_many :task_types, dependent: :destroy
    accepts_nested_attributes_for :task_types, allow_destroy: true

    def full_description
      "#{self.stage.name} - #{self.name}" 
    end
  
end
