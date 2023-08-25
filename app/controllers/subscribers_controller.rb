class SubscribersController < ApplicationController
  def create
    @subscriber = Subscriber.new(subscriber_params)
    @subscriber.token = SecureRandom.hex(16)

    existing_subscriber = Subscriber.find_by(email: @subscriber.email)

    respond_to do |format|
      if existing_subscriber
        format.html { redirect_to blogs_path, alert: "You are already subscribed." }
      elsif @subscriber.save
        SubscriberMailer.with(subscriber: @subscriber).subscriber_email.deliver_later
        format.html { redirect_to blogs_path, notice: 'Thank you for subscribing!' }
      else
        format.html { redirect_to blogs_path, alert: "There was an error subscribing you."}
      end
    end
  end

  def unsubscribe
    @subscriber = Subscriber.find_by(token: params[:token])

    if @subscriber
      @subscriber.destroy
      redirect_to root_path, notice: 'You have successfully unsubscribed.'
    else
      # handle failure case here somehow?
    end
  end

  def destroy
    @subscriber = Subscriber.find(params[:id])
    @subscriber.destroy
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email, :token)
  end
end
