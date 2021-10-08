class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def index
      #@students = Student.select("grade")
    end
    # def new
    #   @user = User.new
    #   @user.student.build
    # end

    # def create
    #   @user = User.new(configure_permitted_parameters)
    # end
    protected
    def configure_permitted_parameters
      # added_attrs = [ :name, :faculty, :email, :password]
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :faculty, :email, :encrypted_password, student_attributes: [:age,
      :sex,:grade,:user_id]])
    end
    # def after_sign_in_path_for(resource)
    #     users_path
    #   end
end
