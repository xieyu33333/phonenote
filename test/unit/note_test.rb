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

require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
