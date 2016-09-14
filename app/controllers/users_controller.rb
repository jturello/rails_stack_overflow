class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      # PENDING - CHANGE TO ROOT_PATH WHEN IT EXISTS!!!!!
      redirect_to new_user_path, notice: "Thanks for signing up!"
    else
      flash[:alert] = "Sign up failed. Try again!"
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
