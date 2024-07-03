class ProductCatagoriesController < ApplicationController
  before_action :set_product_catagory, only: %i[ show edit update destroy ]

  # GET /product_catagories or /product_catagories.json
  def index
    @product_catagories = ProductCatagory.all
  end

  # GET /product_catagories/1 or /product_catagories/1.json
  def show
  end

  # GET /product_catagories/new
  def new
    @product_catagory = ProductCatagory.new
  end

  # GET /product_catagories/1/edit
  def edit
  end

  # POST /product_catagories or /product_catagories.json
  def create
    @product_catagory = ProductCatagory.new(product_catagory_params)

    respond_to do |format|
      if @product_catagory.save
        format.html { redirect_to product_catagory_url(@product_catagory), notice: "Product catagory was successfully created." }
        format.json { render :show, status: :created, location: @product_catagory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_catagories/1 or /product_catagories/1.json
  def update
    respond_to do |format|
      if @product_catagory.update(product_catagory_params)
        format.html { redirect_to product_catagory_url(@product_catagory), notice: "Product catagory was successfully updated." }
        format.json { render :show, status: :ok, location: @product_catagory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_catagory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_catagories/1 or /product_catagories/1.json
  def destroy
    @product_catagory.destroy!

    respond_to do |format|
      format.html { redirect_to product_catagories_url, notice: "Product catagory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_catagory
      @product_catagory = ProductCatagory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_catagory_params
      params.require(:product_catagory).permit(:product_id, :catagory_id)
    end
end
