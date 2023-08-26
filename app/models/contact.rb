# == Schema Information
#
# Table name: contacts
#
#  id                :bigint           not null, primary key
#  name              :string
#  email             :string
#  phone_number      :string
#  message           :text
#  expected_services :text             default([]), is an Array
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Contact < ApplicationRecord
end
