class TaskType < ApplicationRecord
  

  def full_description
    "Etapa: #{self.stage.name} - Tarefa: #{self.name})" 
  end

end
