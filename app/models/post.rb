class Post < ApplicationRecord

  validates :title, presence: true 
  validates :title, :length => {:minimum => 3, :maximum => 20} 
  validates :author, presence: true
  validates :content, presence: true
  validates :content, :length => {:minimum => 10, :maximum => 2000}
  validates :image, presence: true
  validates_format_of :image,  :with => %r{(png|jpg|jpeg)}i, :message => "Неправильный формат файла !!"

  mount_uploader :image, PostimageUploader

end
