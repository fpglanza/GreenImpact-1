class UsersController < ApplicationController

    def show

    end

    def edit
    end

    def update
      @user.update(user_params)
      redirect_to user_path(@sports)
    end

  def addpoints
      @user = current_user
      @user.winpoints += 10
      @user.save

      redirect_to users_path(show)
  end

    private


    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :email, :full_name, :photo, :winpoints)
    end

  end
