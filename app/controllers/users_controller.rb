class UsersController < ApplicationController
    # def index
    #     @users = User.new
    # end

#     def new
#         @user = User.new
#         @user.build_student
#     end

#     def create
#         @user = User.new(user_params)
#     end

#     def  user_params
#         params.require(:user).permit(:name, :faculty, :email, :encrypted_password, student_attributes: [:age,
#         :sex,:grade,:user_id])
#     end

    def show
    end
  def after_sign_up_path_for(resource)
    if  sign_up_params[:content_type] == 1
        students_path(resource)
      puts 1
    elsif sign_up_params[:content_type] == 2
        researchers_path(resource)
      puts 2
    end
  end
private
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :faculty, :email, :encrypted_password, :content_type, student_attributes: [:age,
    :sex, :grade, :user_id]])
  end


end
