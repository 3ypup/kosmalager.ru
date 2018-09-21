class AddPhotoimagesToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :photoimages, :string
  end
end
