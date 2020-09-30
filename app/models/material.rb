class Material < ApplicationRecord
  belongs_to :material_category

  def full_description
    "Categoria: #{self.material_category.name} - Material: #{self.name})" 
  end

end
