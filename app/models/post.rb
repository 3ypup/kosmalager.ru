class Post < ApplicationRecord

  validates :title, presence: {:message => "Тема поста обязательна!!"}
  validates :title, :length => { :maximum => 40, :message => "Слишком длинная тема поста !!"}
  validates :author, presence: true
  validates :content, presence: {:message => "Текст поста необходим!!"}
  validates :content, :length => { :maximum => 2000, :message => "Слишком много текста !!"}
  validates :image, presence:  {:message => "Посту нужна обложка!!"}
  validates_format_of :image,  :with => %r{(png|jpg|jpeg)}i, :message => "Неправильный формат файла !!"

  mount_uploader :image, PostimageUploader

end
