class Document < ApplicationRecord
  belongs_to :document_type
  belongs_to :person

  has_one_attached :attachment

end
