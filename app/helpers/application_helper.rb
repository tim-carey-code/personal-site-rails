module ApplicationHelper
  include Pagy::Frontend

  def format_date(date)
    date.strftime('%b %-d, %Y')
  end

  def full_name(user)
    "#{user.first_name} #{user.last_name}"
  end

  def limit_action_text_content(content, limit)
    max_words = limit

    plain_text_content = content.to_plain_text
    limited_plain_text = plain_text_content.split(' ')[0...max_words].join(' ')

    ActionText::Content.new(limited_plain_text)
  end
end
