class Employment < ApplicationRecord
  belongs_to :place
  belongs_to :person
end
