class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	rescue_from CanCan::AccessDenied do |exception|
	  redirect_to root_path, alert: exception.message
	end

	protected

	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :role) }
	  devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :avatar) }
	end
end
