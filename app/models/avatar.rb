class Avatar < ActiveRecord::Base
	belongs_to :user
	mount_uploader :avatar, AvatarUploader
	validates :name, presence: true
end