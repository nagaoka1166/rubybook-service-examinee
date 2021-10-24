# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]
  before_action :authenticate_user!

  # GET /resource/sign_up
  def new
    # super
    @user = User.new #ココのコメントアウト外すとform_forのエラーがなくなる。
    @user.build_student
  end

  # POST /resource
  def create
    super
  user = User.new(sign_up_params)
  user.save
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end
  def after_sign_in_path_for(resource)
    posts_path(resource) # ログイン後に遷移するpathを設定
  end

  def after_sign_out_path_for(resource)
    new_user_session_path # ログアウト後に遷移するpathを設定
  end
  
  def birthday_join
    # パラメータ取得
    date = params[:user][:birthday]
    # ブランク時のエラー回避のため、ブランクだったら何もしない
    # if date["birthday(1i)"].empty? && date["birthday(2i)"].empty? && date["birthday(3i)"].empty?
    #   return
    # end
    # 年月日別々できたものを結合して新しいDate型変数を作って返す
    # Date.new date["birthday(1i)"].to_i,date["birthday(2i)"].to_i,date["birthday(3i)"].to_i
  end
  protected
  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :faculty, :email, :encrypted_password, :content_type, student_attributes: [:age,
    :sex, :grade, :birthday, :user_id]])
  end

  # def student_params
  #   params
  #     .require(:student)
  #     .permit(Form::Product::REGISTRABLE_ATTRIBUTES)
  # end


  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    if  sign_up_params[:content_type].to_i == 1
      posts_path(resource)
    elsif sign_up_params[:content_type].to_i == 2
        # researchers_path(resource)
        posts_path(resource)
    end
  end
  #メソッドのスコープを小さくするもの
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [student_attributes: [:age,:sex,:grade,:user_id]])
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   if  sign_up_params[:content_type] == '1'
  #     redirect_to student_path
  # elsif sign_up_params[:content_type] == '2'
  #     redirect_to researchers_path
  # end
  # end
end
