module ApplicationHelper
  include Pagy::Frontend

  def format_date(date)
    date.strftime("%b %-d, %Y")
  end

  def full_name(user)
    "#{user.first_name} #{user.last_name}"
  end
end
