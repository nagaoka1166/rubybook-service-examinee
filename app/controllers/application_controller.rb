class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!
    #bootstrap用のフラッシュメッセージキーの許可
    add_flash_types :success, :info, :warning, :danger
    def index
      # @students = Student.select("grade")
    end
    # def new
    #   @user = User.new #ココのコメントアウト外すとform_forのエラーがなくなる。
    #   @student = @user.build_student
    # end

    # def create
    #   user = @student.new(configure_permitted_parameters)
    #   user.save
    # end

  def after_sign_in_path_for(resource)
    posts_path(resource) # ログイン後に遷移するpathを設定
  end

  def after_sign_out_path_for(resource)
    new_user_session_path
    # ログアウト後に遷移するpathを設定
  end
    protected  #メソッドのスコープを小さくするもの
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :faculty, :passward, :password_confirmation, :content_type, [student_attributes: [:age,:sex,:grade,:user_id]]])
    end
    # def after_sign_in_path_for(resource)
    #     users_path
    #   end
end
