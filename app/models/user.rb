class User < ApplicationRecord
    mount_uploader :user_image, UserImageUploader
    has_secure_password
end
