class SubscribersController < ApplicationController
  def create
    @subscriber = Subscriber.new(subscriber_params)
    @subscriber.token = SecureRandom.hex(16)

    respond_to do |format|
      if @subscriber.save
        SubscriberMailer.with(subscriber: @subscriber).subscriber_email.deliver_now
        format.html { redirect_to blogs_path, notice: 'Thank you for subscribing!' }
      else
        format.html { redirect_to blogs_path, notice: 'There was an error subscribing you.' }
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
