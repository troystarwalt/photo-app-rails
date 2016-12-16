class AddImagesToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :images, :json
  end
end
