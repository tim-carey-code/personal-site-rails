# == Schema Information
#
# Table name: blogs
#
#  id         :bigint           not null, primary key
#  title      :string
#  content    :text
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  category   :string
#
class Blog < ApplicationRecord
  belongs_to :user
  has_rich_text :content
end
