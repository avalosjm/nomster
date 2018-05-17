class Photo < ApplicationRecord

belongs_to :place #lesson 39

mount_uploader :picture, PictureUploader

end
