class Avatar < ActiveRecord::Base
  attr_accessible :avatar, :avatar_for, :avatar_id, :content_type, :file_name, :file_size
  mount_uploader :avatar , AvatarUploader
  belongs_to :avatar_for , :polymorphic => true
  validates :avatar , :presence => true
  validates :avatar_for , :presence => true

  before_save :set_avatar_attribute

  def set_avatar_attribute
  	if avatar.present? && avatar_changed?
  		self.content_type = avatar.file.content_type
  		self.file_size = avatar.file.size
  		self.file_name = avatar.file.original_filename
  	end
  end
end
