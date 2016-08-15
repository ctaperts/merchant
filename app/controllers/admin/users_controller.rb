class Admin::UsersController < ApplicationController
  #before_action :set_product, only: [:show, :edit, :update, :destroy]
  # TODO what is before action?
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy && !current_user
	@user.destroy
        redirect_to admin_user_path, notice: "User deleted."
    end
  end

end
