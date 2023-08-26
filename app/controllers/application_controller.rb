class ApplicationController < ActionController::Base
  include Pagy::Backend
  include Pundit::Authorization
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :redirect_subdomain

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  
  def redirect_subdomain
    if request.host == 'www.puppies.com'
      redirect_to 'http://puppies.com' + request.fullpath, :status => 301
    end
  end

  protected

  def user_not_authorized
    flash[:alert] = 'You are not authorized to perform this action.'
    redirect_back(fallback_location: root_path)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
  end
end
