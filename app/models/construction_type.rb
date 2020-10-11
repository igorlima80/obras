class ConstructionType < ApplicationRecord
   
    has_and_belongs_to_many :sub_stages, dependent: :destroy
    accepts_nested_attributes_for :sub_stages

    has_many :task_types, through: :sub_stages

end
