# == Schema Information
#
# Table name: contacts
#
#  id                :bigint           not null, primary key
#  name              :string
#  email             :string
#  phone_number      :integer
#  message           :text
#  expected_services :text             default([]), is an Array
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require "test_helper"

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
