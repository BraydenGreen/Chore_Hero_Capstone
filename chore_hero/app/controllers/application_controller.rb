class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  #before_action :authenticate_user!
  # before_action :configure_permitted_parameters, if: :devise_controller?
  # protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) << :first_name << :last_name
  #   devise_parameter_sanitizer.for(:account_update) << :first_name << :last_name
  # end
  # before_filter :authenticate_user!
  # before_filter :authenticate_child!

  def after_sign_in_path_for(resource)
    user_path(resource)
  end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password) }
        devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :avatar) }
    end

end
