class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_path, notice: "Thanks for signing up!"
    else
      flash[:alert] = "Sign up failed. Try again!"
      render new
    end
  end

end
