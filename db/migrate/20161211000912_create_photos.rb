class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :image
      t.string :title
      t.text :description
      t.datetime :date_taken

      t.timestamps
    end
  end
end
