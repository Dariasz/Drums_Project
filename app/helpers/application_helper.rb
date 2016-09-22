module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  
  def require_admin
    unless current_user && current_user.has_role?(:admin)
      redirect_to root_path
    end
  end
  
  def require_admin?
    current_user && current_user.has_role?(:admin)
  end
  
end
