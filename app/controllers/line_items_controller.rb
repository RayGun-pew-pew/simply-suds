class LineItemsController < ApplicationController
  before_action :set_line_item, only: %i[ show edit update destroy ]

  Stripe.api_key = 'sk_test_51PR2wqK5wu4lBGD1J8Km9Wklgkm8qGVHD1gc21tv8q1K5ursbin5dlpVzimFuLsNWAr938lmkaKLVwcimgq3tvFZ00r4BkTfp1'
  
  # GET /line_items or /line_items.json
  def index
    @line_items = LineItem.all
  end

  # GET /line_items/1 or /line_items/1.json
  def show
  end

  # GET /line_items/new
  def new
    @line_item = LineItem.new
  end

  # GET /line_items/1/edit
  def edit
  end

  # POST /line_items or /line_items.json
  def create
    order = Order.find(cookies[:order_id])
    @line_item = LineItem.new({product_id: params[:product_id],
                               order_id: order.id,
                               quantity: params[:quantity]})

    respond_to do |format|
      if @line_item.save
            if order.client_secret == nil
              payment_intent = Stripe::PaymentIntent.create(
                amount: order.products.pluck(:price).sum,
                currency: 'usd'
              )
              order.client_secret = payment_intent["client_secret"]
              order.payment_intent_id = payment_intent["id"]
              order.save()
              cookies[:client_secret] = order.client_secret
            else
              updated_intent = Stripe::PaymentIntent.update(
                order.payment_intent_id,
                amount: order.products.pluck(:price).sum
              )
            end
        format.html { redirect_to order_url(order.id), notice: "Line item was successfully created." }
        format.json { render :show, status: :created, location: @line_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_items/1 or /line_items/1.json
  def update
    respond_to do |format|
      if @line_item.update(line_item_params)
        format.html { redirect_to line_item_url(@line_item), notice: "Line item was successfully updated." }
        format.json { render :show, status: :ok, location: @line_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_items/1 or /line_items/1.json
  def destroy
    @line_item.destroy!

    respond_to do |format|
      format.html { redirect_to order_url(cookies[:order_id]), notice: "Line item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    def set_order
        @order = Order.find(cookies[:order_id])
    end
    
    # Only allow a list of trusted parameters through.
    def line_item_params
      params.permit(:product_id, :quantity)
    end

    def create_payment_intent
      order = Order.find(cookies[:order_id])
      payment_intent = Stripe::PaymentIntent.create(amount: calculate_order_total(order.list_items),
                                                    currency: "usd")
      order.client_secret = payment_intent.client_secret
      end
end
