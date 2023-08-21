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
class Blog < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  has_one_attached :cover_image
end
