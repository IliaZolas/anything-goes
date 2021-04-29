class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user)
  end

  private
  
  def user_params
    params.require(:user).permit(:fname, :lname, :username, :user_description, :user_address, :password, :password_confirmation, :photo)
end

end
