class RemoveTitleToPictures < ActiveRecord::Migration[5.1]
  def change
    remove_column :pictures, :title, :string
  end
end
