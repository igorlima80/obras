class Employment < ApplicationRecord

  enum status: {
        active: 0,
        cancelled: 1        
  }  

  monetize :base_salary_cents

  belongs_to :occupation
  belongs_to :person

  has_many :benefits, dependent: :destroy
  accepts_nested_attributes_for :benefits, allow_destroy: true

  has_many :tasks
  


  after_create :set_active_employment

  def set_active_employment
    self.person.employments.each do |emp|
      Employment.find(emp.id).update(status: 'cancelled')
     
    end 

    self.status = 'active'
    self.save
  end  

  def total_benefits
    self.benefits.sum(:value_cents)
  end

  def full_description
    "#{self.person.name} (CPF: #{self.person.cpf} - Vínculo: #{self.occupation.name})" 
  end
  
end
