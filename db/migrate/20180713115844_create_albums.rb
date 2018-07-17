class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|

      t.text :author
      t.text :content
      t.text :title
      t.string :image
      t.string :pics


      t.timestamps
    end
  end
end
