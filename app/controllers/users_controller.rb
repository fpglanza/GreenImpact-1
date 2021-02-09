class UsersController < ApplicationController

    def show
      @user = User.find(params[:id])
    end

    def edit
    end

    def update
      @user.update(user_params)
      redirect_to user_path(@sports)
    end

    def timer_done?
      end_time = Time.now
      if defined?(@start_time)
        if end_time - start_time >= 3600
          return true
          @start_time = Time.now
        end
      else
        return true
        @start_time = Time.now
      end
    end

    private


    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :email, :full_name, :photo, :winpoints)
    end

  end
