# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

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

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :faculty, :email, :encrypted_password, :content_type, student_attributes: [:age,
    :sex, :grade, :user_id]])
  end


  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    if  sign_up_params[:content_type].to_i == 1
        students_path(resource)
    elsif sign_up_params[:content_type].to_i == 2
        # researchers_path(resource)
        posts_path(resource)
    end
  end

  protected  #メソッドのスコープを小さくするもの
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [student_attributes: [:age,:sex,:grade,:user_id]])
  # end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    
  #   if  sign_up_params[:content_type] == '1'
  #     redirect_to student_path
  # elsif sign_up_params[:content_type] == '2'
  #     redirect_to researchers_path
  end
  # end
end
