# == Schema Information
#
# Table name: subscribers
#
#  id         :bigint           not null, primary key
#  email      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  token      :string
#
class Subscriber < ApplicationRecord
  validates :email, presence: true, uniqueness: true
end
