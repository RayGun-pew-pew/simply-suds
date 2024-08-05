class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy checkout ]
  Stripe.api_key = 'sk_test_51PR2wqK5wu4lBGD1J8Km9Wklgkm8qGVHD1gc21tv8q1K5ursbin5dlpVzimFuLsNWAr938lmkaKLVwcimgq3tvFZ00r4BkTfp1'
  
  # GET /orders or /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1 or /orders/1.json
  def show
    if Current.user
      @order = params[:id]
    else
      render "cart"
    end
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update
    if @order.client_secret == nil
      payment_intent = Stripe::PaymentIntent.create(
        amount: 100,
        currency: 'usd')
      @order.client_secret = payment_intent.client_secret
      cookies[:client_secret] = @order.client_secret
      end
    render "orders/payment"
  end

  # DELETE /orders/1 or /orders/1.json
  def destroy
    @order.destroy!

    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def checkout
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find_by(id: params[:id])
  end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:purchased, :shipped,
                                    :date_shipped, :client_secret,
                                    :first_name, :last_name,
                                    :address_line_1,
                                    :address_line_2,
                                    :city, :state,
                                    :zipcode)
    end
end
