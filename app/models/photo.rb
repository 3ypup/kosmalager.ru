class Photo < ApplicationRecord
belongs_to :album

validates :photoimages, presence: true

mount_uploaders :photoimages, PhotoimageUploader
serialize :photoimages, JSON # If you use SQLite, add this line. 

validates :photoimages, presence: true
end
