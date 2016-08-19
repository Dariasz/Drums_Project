class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end


#mein

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    
    added_attrs = [:imie, :nazwisko, :nickname, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: [:imie, :nazwisko, :nickname, :email, :password, :password_confirmation, :remember_me, :avatar]
    
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:imie, :nazwisko, :nickname, :email, :password, :password_confirmation])
    #devise_parameter_sanitizer.permit(:sign_in, keys: [:nickname, :email])
    #devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :email])
  end
  
  private

  # Overwriting the sign_out redirect path method
  def after_sign_in_path_for resource
    pages_O_projekcie_path
  end
  
  def after_sign_out_path_for(resource)
    pages_O_projekcie_path
  end
  
  def after_update_path_for(resource)
   edit_user_registration_path
  end
#mein
end

