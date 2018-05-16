class Photo < ApplicationRecord

belongs_to :place #lesson 39

class User < ActiveRecord::Base
	mount_uploader :user, PictureUploader
end

end
