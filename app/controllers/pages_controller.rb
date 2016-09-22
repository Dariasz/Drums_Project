class PagesController < ApplicationController


  before_action :require_admin, only: [:Usersi, :make_admin, :take_admin]
  

  def index
     render layout: 'appWithoutBannerAndNavbar'
  end

  def Budowa
  end

  def Zapis_Nutowy
  end

  def Jak_grac

  end

  def Symulator

  end
  
  def SymalatorS
  
  end

  def O_projekcie
    @post = Post.last
  end
  
  def Usersi
    @users = User.all
  end
  
  def make_admin
    @user = User.find(params[:id])
    @user.add_role 'admin'
    respond_to do |format|
      format.html { redirect_to pages_Usersi_path }
      format.js
    end
    
  end
  
  def take_admin
    @user = User.find(params[:id])
    @user.remove_role 'admin'
    respond_to do |format|
      format.html { redirect_to pages_Usersi_path }
      format.js
    end
  end
  

end
