class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
  end

  def destroy
    @user = User.find(current_user.id)
    @user.destroy
    flash[:warning] = 'Account deleted.'
    redirect_to root_path
  end

  def update
    @user = User.find(current_user.id)
    @user.update(user_params)
    flash[:info] = "Role is now #{@user.role}"
    redirect_to @user
  end

  protected

  def user_params
    params.require(:user).permit(:role)
  end
end
