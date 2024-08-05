class MainController < ApplicationController
  
  def index
  end

  def shop
    @products = Product.all()
  end

  def about
  end
end
