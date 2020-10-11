class TaskType < ApplicationRecord
  belongs_to :sub_stage

  def full_description
    "Etapa: #{self.sub_stage.full_description} - Tarefa: #{self.name})" 
  end

end
