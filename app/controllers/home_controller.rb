class HomeController < ApplicationController
  def index; end

  def resume
    send_file 'app/assets/pdfs/tc_resume_2023.pdf', filename: 'tc_resume.pdf', type: 'application/pdf',
                                                    disposition: 'inline'
  end

  def about; end

  def blog; end

  def work; end

  def contact; end
end
