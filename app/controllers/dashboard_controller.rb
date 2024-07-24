class DashboardController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find_by({ id: session[:user_id] })
      @orders = Order.where(purchased: true)
      @products = Product.all
    else
      redirect_to "/sign_in"
    end
  end
end
