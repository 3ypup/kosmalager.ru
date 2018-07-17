class CreatePics < ActiveRecord::Migration[5.2]
  def change
    create_table :pics do |t|

      t.string :images

      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
