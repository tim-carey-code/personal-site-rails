class ApplicationController < ActionController::Base
  include Pagy::Backend
  include Pundit::Authorization
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  if Rails.env == 'production'
    before_action :redirect_subdomain
    def redirect_subdomain
      if request.host == 'https://www.timcarey.dev' || 'www.timcarey.dev'
        redirect_to 'http://timcarey.dev' + request.fullpath, status: 301, allow_other_host: true
      end
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
