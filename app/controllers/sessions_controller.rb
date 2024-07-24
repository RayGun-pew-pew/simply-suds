class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email_address: params[:email_address])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/dashboard", notice: "logged in successfully"
    else
      flash[:alert] = "invalid email or password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/sign_in", notice: "logged out"
  end
end
