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

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to admin_user_url(@user), notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

end
