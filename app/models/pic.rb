class Pic < ApplicationRecord
belongs_to :album


  
  validates :images, presence: true

mount_uploaders :images, PicimageUploader
serialize :images, JSON # If you use SQLite, add this line.


end
