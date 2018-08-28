class Post < ApplicationRecord

  validates :title, presence: true 
  validates :title, :length => { :maximum => 40} 
  validates :author, presence: true
  validates :content, presence: true
  validates :content, :length => { :maximum => 2000}
  validates :image, presence: true
  validates_format_of :image,  :with => %r{(png|jpg|jpeg)}i, :message => "Неправильный формат файла !!"

  mount_uploader :image, PostimageUploader

end
