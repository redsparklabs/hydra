class Persona < ActiveRecord::Base
	attr_accessible :description, :name, :product_id, :user_id, :avatar, :remove_avatar
	mount_uploader :avatar, AvatarUploader

	has_many :stories
	belongs_to :product
	belongs_to :user
end
