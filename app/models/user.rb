class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :usertype
  has_secure_password
  validates :name , presence: true
  validates :email , presence: true
  validates :password , presence: true , length: { minimum: 6 }
  validates :password_confirmation , presence: true 
  has_many :blogs
  before_save :create_remember_token
  before_save{ |user| user.email = email.downcase }
  
  private
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
