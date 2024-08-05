class ApplicationController < ActionController::Base
  before_action :set_current_user
  before_action :set_current_order
  
  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end

  def set_current_order
    if cookies[:order_id] && Order.find_by(id: cookies[:order_id], purchased: false)
     Current.order = Order.find_by(id: cookies[:order_id], purchased: false)
   else Current.order = Order.create()
     cookies[:order_id] = { :value => Current.order.id, :expires => 30.days.from_now }
   end
 end
end
