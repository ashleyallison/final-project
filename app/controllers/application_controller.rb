class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:username])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:username])
  end
  skip_before_action :verify_authenticity_token, raise: false
  
   def home
    
    render("users/home.html.erb")
   end
  #"/starthere" redirect_to "users/sign_in"
    
  
end
