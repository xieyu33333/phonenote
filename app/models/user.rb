class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest, :type
  has_many :blogs
end
