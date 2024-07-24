class DashboardController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find_by({ id: session[:user_id] })
    else
      redirect_to "/sign_in"
    end
  end
end
