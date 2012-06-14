class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:edit, :update]
  
  def new
     @user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
     sign_in @user
     flash[:success] = "Welcome to the Sample App!"

      # Handle a successful save.
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      # Handle a successful update.
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

    def signed_in_user
      # uses a shortcut for setting flash[:notice] by passing an options hash to the redirect_to function
      # flash[:notice] = "Please sign in."
      # redirect_to signin_path
      # Together with :success and :error, the :notice key completes our triumvirate of flash styles, all of 
      # which are supported natively by Bootstrap CSS.
      redirect_to signin_path, notice: "Please sign in." unless signed_in?
    end

end
