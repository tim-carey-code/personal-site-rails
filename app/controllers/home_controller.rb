class HomeController < ApplicationController
  def index
    @last_three_blog_posts = Blog.order(created_at: :desc).limit(3)
  end

  def resume
    send_file 'app/assets/pdfs/tc_resume_2023.pdf', filename: 'tc_resume.pdf', type: 'application/pdf',
                                                    disposition: 'inline'
  end

  def about; end

  def work; end

  def contact; end
end
