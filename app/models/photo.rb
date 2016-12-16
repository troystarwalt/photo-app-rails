class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader
  scope :last_five, -> { order("created_at desc").last(5) }
  validates :title, :description, :image, :date_taken, :presence => true

end
