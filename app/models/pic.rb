class Pic < ApplicationRecord
belongs_to :album

mount_uploaders :images, PicimageUploader
serialize :images, JSON # If you use SQLite, add this line.


  
validates :images, presence: true, :on => :create

validates_format_of :images,  :with => %r{(png|jpg|jpeg)}i, :message => "Неправильный формат файла !!"


end
