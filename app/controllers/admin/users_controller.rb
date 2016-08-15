class Admin::UsersController < ApplicationController
  #before_action :set_user, only: [:show, :edit, :update, :destroy, :create, :new]
  # TODO what is before action?
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy && !current_user
	@user.destroy
        redirect_to admin_users_path, notice: "User deleted."
    end
  end

  def new
    @user = User.new
  end

  def edit
    @users = User.find(params[:id])
  end

  def update
  @users = User.find(params[:id])
    if @users.update(user_params)
      redirect_to :back, notice: "Successfully updated"
    else
      flash.now[:notice] = "Something went wrong could not update"
    end	
  end

  def create
    @users = User.new(user_params)
    if @users.save
      redirect :back, notice: "Successfully saved!"
    else
      flash.now[:notice] = "Something went wrong could not save the user"
      redirect_to :back
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  #def set_user
    #@user = User.find(params[:id])
  #end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:email)
  end
end
