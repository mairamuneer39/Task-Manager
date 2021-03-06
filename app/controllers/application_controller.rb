class ApplicationController < ActionController::Base
  helper :all
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) << [:email, :password] 
    devise_parameter_sanitizer.for(:sign_up) << [:name, :email, :password, :password_confirmation, :role]
  end

end
