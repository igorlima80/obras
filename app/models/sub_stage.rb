class SubStage < ApplicationRecord
  belongs_to :stage
  has_many :task_types, dependent: :destroy
    accepts_nested_attributes_for :task_types, allow_destroy: true

    def full_description
      "Etapa: #{self.stage.name} - Sub-Etapa: #{self.name})" 
    end
  
end
