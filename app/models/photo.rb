class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploaders :images, ImageUploader
  scope :last_eight, -> { order("created_at desc").last(8) }
  validates :title, :description, :image, :date_taken, :presence => true

end
