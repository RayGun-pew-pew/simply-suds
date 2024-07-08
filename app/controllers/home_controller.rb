class HomeController < ApplicationController
  def index
    if session[:shopper_id]
      @shopper = Shopper.find(session[:shopper_id])
    else
      @shopper = Shopper.new()
      if @shopper.save()
        session[:shoppper_id] = @shopper.id
      end
    end
  end
end
