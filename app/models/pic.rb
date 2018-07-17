class Pic < ApplicationRecord
belongs_to :album


  
validates :images, presence: true
validates_format_of :images,  :with => %r{(png|jpg|jpeg)}i, :message => "Неправильный формат файла !!"

mount_uploaders :images, PicimageUploader
serialize :images, JSON # If you use SQLite, add this line.


end
