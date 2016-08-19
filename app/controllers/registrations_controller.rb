class RegistrationsController < Devise::RegistrationsController
  

  
  def destroy
      
      if current_user.valid_password?(params[:user][:password_check])
          resource.destroy
          Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
          set_flash_message! :notice, :destroyed
          yield resource if block_given?
          respond_with_navigational(resource){ redirect_to after_sign_out_path_for(resource_name) }
     else
          redirect_to edit_user_registration_path
          flash[:msg] ="Invalidzkie hasło"
      end
  end
  
  
end