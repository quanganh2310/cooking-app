class Category < ApplicationRecord
    # mount_uploader :image_url, AvatarUploader
    has_many :items
    has_one_attached :image_url
end
