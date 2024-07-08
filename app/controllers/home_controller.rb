class HomeController < ApplicationController
  before_action :set_shopper
  before_action :set_order
  
  def index
  end

  private

  def set_shopper
    if session[:shopper_id] && Shopper.find(session[:shopper_id])
      @shopper = Shopper.find(session[:shopper_id])
    else
      @shopper = Shopper.new()
      if @shopper.save()
        session[:shopper_id] = @shopper.id
      end
    end
  end

  def set_order
    if session[:order_id]
      @order = Order.find(session[:order_id])
    else
      if Order.where(shopper_id: session[:shopper_id],  purchased: false).empty?
        @order = Order.new(shopper_id: session[:shopper_id])
        if @order.save()
          session[:order_id] = @order.save
        end
      end
    end
  end
end
