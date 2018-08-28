class Event < ApplicationRecord

  validates :title, presence: true 
  validates :title, :length => {:maximum => 20} 
  validates :author, presence: true
  validates :content, presence: true
  validates :content, :length => {:maximum => 2000}
  validates :date, presence: true
  validates :image, presence: true


mount_uploader :image, EventimageUploader
  
end
