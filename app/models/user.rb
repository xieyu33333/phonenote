class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest, :usertype
  validates :name , presence: true
  has_many :blogs
end
