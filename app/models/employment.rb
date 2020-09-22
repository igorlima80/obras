class Employment < ApplicationRecord

  enum status: {
        active: 0,
        cancelled: 1        
  }  

  monetize :base_salary_cents

  belongs_to :place
  belongs_to :person

  has_many :benefits, dependent: :destroy
  accepts_nested_attributes_for :benefits, allow_destroy: true


  after_create :set_active_employment

  def set_active_employment
    self.person.employments.each do |emp|
      Employment.find(emp.id).update(status: 'cancelled')
     
    end 

    self.status = 'active'
    self.save
  end  
  
end
