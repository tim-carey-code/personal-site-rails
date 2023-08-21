# Preview all emails at http://localhost:3000/rails/mailers/subscriber_mailer
class SubscriberMailerPreview < ActionMailer::Preview
  def subscriber_email
    SubscriberMailer.with(subscriber: Subscriber.first).subscriber_email
  end
end
