class WinpointsController < ApplicationController

def set_user
  @user = User.find(params[:id])
end

def user_params
  params.permit(:username, :email, :full_name, :photo, :winpoints)
end

def update
  @user = User.find(params[:id])
  @user.winpoints += 10
  @user.save
  if @user.update(user_params)
    redirect_to usersshow_path, notice: 'Points Updated.'
  else
    render :edit
  end

end

end
