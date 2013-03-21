# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  usertype        :integer          default(1)
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  remember_token  :string(255)
#
class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :usertype , :admin
  has_secure_password
  validates :name , presence: true, length:{ maximum:40 }
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
