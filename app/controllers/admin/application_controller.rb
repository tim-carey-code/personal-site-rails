# All Administrate controllers inherit from this
# `Administrate::ApplicationController`, making it the ideal place to put
# authentication logic or other before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    include Administrate::Punditize
    before_action :authenticate_admin

    def authenticate_admin
      redirect_to "/", alert: "You are not authorized to perform this action." unless current_user && current_user.admin?
    end
  end
end
