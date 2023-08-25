class ContactMailer < ApplicationMailer
  self.delivery_job = ContactEmailJob
  include ApplicationHelper
  helper :application

  def contact_email(contact)
    @contact = contact
    mail(to: 'timcarey1989@gmail.com', subject: 'New Contact Form Submission')
  end
end
