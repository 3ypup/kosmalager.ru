class Album < ApplicationRecord
  has_many :pics

  validates :title, presence: { :message => "Выберите название альбома!!!"} 
  validates :title, :length => {:minimum => 3, :maximum => 20, :message => "Слишком длинное название альбома!!!"} 
  validates :author, presence: true
  
  validates :image, presence: {:message => "Выберите обложку альбома!!!"}
  validates_format_of :image,  :with => %r{(png|jpg|jpeg)}i, :message => "Неправильный формат файла !!"

  mount_uploader :image, AlbumimgUploader
  

end
