# == Schema Information
#
# Table name: blogs
#
#  id           :bigint           not null, primary key
#  title        :string
#  user_id      :bigint           not null
#  time_of_read :integer
#  category     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class BlogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
