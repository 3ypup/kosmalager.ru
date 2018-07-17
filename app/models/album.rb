class Album < ApplicationRecord
  

  validates :title, presence: true 
  validates :title, :length => {:minimum => 3, :maximum => 20} 
  validates :author, presence: true
  
  validates :image, presence: true
  validates_format_of :image,  :with => %r{(png|jpg|jpeg)}i, :message => "Неправильный формат файла !!"

  mount_uploader :image, AlbumimgUploader
  mount_uploaders :pics, PicsUploader
  serialize :pics, JSON # If you use SQLite, add this line.
end
