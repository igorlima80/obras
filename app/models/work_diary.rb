class WorkDiary < ApplicationRecord
  belongs_to :construction
  belongs_to :stage

  has_many :wheaters, dependent: :destroy
  accepts_nested_attributes_for :wheaters, allow_destroy: true

  has_many :problems, dependent: :destroy
  accepts_nested_attributes_for :problems, allow_destroy: true

  has_many :frequencies, dependent: :destroy
  accepts_nested_attributes_for :frequencies, allow_destroy: true

  has_many :documents, dependent: :destroy, as: :documentable
  accepts_nested_attributes_for :documents

  has_many :photos, dependent: :destroy
  has_many :images, through: :photos, source: :image_attachment
  accepts_nested_attributes_for :photos, allow_destroy: true

end
