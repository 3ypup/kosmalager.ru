class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|

      t.text :author
      t.text :content
      t.text :title
      t.string :image
      t.datetime :date



      t.timestamps
    end
  end
end
