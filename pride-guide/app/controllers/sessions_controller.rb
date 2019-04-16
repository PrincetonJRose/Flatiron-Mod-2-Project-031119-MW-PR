class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      @user.online = true
      @user.save!(validate: false)
      session[:user_id] = @user.id
      redirect_to home_path
    else
      @errors = "Invalid email and/or password."
      render :new
    end
  end

  def destroy
    @user_logout = User.find(current_user.id)
    @user_logout.online = false
    @user_logout.save!(validate: false)
    session.delete(:user_id)
    redirect_to login_path
  end

end
