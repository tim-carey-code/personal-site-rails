class ContactsController < ApplicationController
  include ApplicationHelper

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        ContactMailer.contact_email(@contact).deliver_later
        format.html do
          redirect_to root_path, notice: 'Thank you for contacting me! I will get back to you as soon as possible.'
        end
      else
        format.html { redirect_to root_path, notice: 'There was an error sending your message. Please try again.' }
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message, :phone_number, expected_services: [])
  end
end
