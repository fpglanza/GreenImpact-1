class UsersController < ApplicationController

    def show
 
    end
    
    def edit
    end
    
    def update
     
    end
    
    def update
      @user.update(user_params)
      redirect_to user_path(@sports)
    end
    
    
    
    private
    
    def set_user
      @user = User.find(params[:id])
    end
  
    def user_params
      params.require(:user).permit(:username, :email, :full_name, :photo, :avatar_url)
    end
    
  end