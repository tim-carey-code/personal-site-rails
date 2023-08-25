class SubscriberMailer < ApplicationMailer
  self.delivery_job = SubscriberEmailJob
  def subscriber_email
    @subscriber = params[:subscriber]
    @unsubscribe_url = subscriber_url(@subscriber)
    mail(to: @subscriber.email, subject: 'Thank you for subscribing to timcarey.dev!')
  end
end
