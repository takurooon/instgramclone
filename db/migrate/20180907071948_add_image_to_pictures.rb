class AddImageToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :image, :text
  end
end
