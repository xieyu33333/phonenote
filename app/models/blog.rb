# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title      :string(255)
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Blog < ActiveRecord::Base
  attr_accessible :content, :title, :user_id
  belongs_to :user
end
