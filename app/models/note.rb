# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  phone      :integer
#  email      :string(255)
#  qq         :integer
#  skype      :string(255)
#  name       :string(255)
#  job        :string(255)
#  tel        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# before_filter :admin_user, only: [:destroy , :edit, :update] 
class Note < ActiveRecord::Base
  attr_accessible :email, :job, :name, :phone, :qq, :skype, :tel
end
