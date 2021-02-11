class ApplicationController < ActionController::Base
  before_action :configure_permitted_parametaers, if: :devise_controller?

  private
  def configure_permitted_parametaers
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end
