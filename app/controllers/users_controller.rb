class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

end
    def show
 
    end
    
    def edit
    end
    
    def update
     
    end
    
    
    
    
    
    private
    
    def set_user
      @user = User.find(params[:id])
    end
  
    def user_params
      params.require(:user).permit(
        :email, :full_name, :username
        )
    end
    
  end