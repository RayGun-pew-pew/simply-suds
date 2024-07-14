class HomeController < ApplicationController
  before_action :set_shopper
  before_action :set_order
  
  def index
  end

  private

  def set_shopper
    if cookies[:shopper_id] && Shopper.find(cookies[:shopper_id])
      @shopper = Shopper.find(cookies[:shopper_id])
    else
      @shopper = Shopper.new()
      if @shopper.save()
        cookies[:shopper_id] = @shopper.id
      end
    end  
  end

  def set_order
    if cookies[:order_id]
      @order = Order.find(cookies[:order_id])
    else
      if Order.where(shopper_id: cookies[:shopper_id], purchased: false).empty?
        @order = Order.new(shopper_id: cookies[:shopper_id])
        if @order.save()
          cookies[:order_id] = @order.id
        end
      end
    end
  end
end
