class User < ApplicationRecord
    has_many :blogs
    mount_uploader :user_image, UserImageUploader
    has_secure_password
end
