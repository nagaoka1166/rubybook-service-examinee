class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
    #   added_attrs = [ :name, :faculty, :email, :password,]
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :faculty, :email, :password])
    end
    # def after_sign_in_path_for(resource)
    #     users_path
    #   end
end
