class Admin::UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def destroy
    #@users = User.find(params[:id])

    if @users.destroy
        redirect_to :back, notice: "User deleted."
    else
        redirect_to :back, notice: "Error: User not deleted."
    end
  end

  def new
    @user = User.new
  end

  def edit
    #@users = User.find(params[:id])
  end

  def update
  #@users = User.find(params[:id])
    if @users.update(user_params)
      redirect_to :back, notice: "Successfully updated"
    else
      redirect_to :back, notice: "Error: User not updated"
    end	
  end

  def create
    @users = User.new(user_params)
    if @users.save
      redirect_to :back, notice: "Successfully saved!"
    else
      flash.now[:notice] = "Something went wrong could not save the user"
      redirect_to :back, notice: "Something went wrong could not save the user"
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @users = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
