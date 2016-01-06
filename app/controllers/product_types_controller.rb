class ProductTypesController < ApplicationController
  before_action :set_product_type, only: [:show, :edit, :update, :destroy]

  # GET /product_types
  # GET /product_types.json
  def index
    @product_types = ProductType.all
  end

  # GET /product_types/1
  # GET /product_types/1.json
  def show
  end

  def new
    @product_type = ProductType.new
  end

  def edit
  end

  def create
    @product_type = ProductType.new(product_type_params)
    if @product_type.save
      redirect_to product_types_path
    else
      render :new
    end
  end

  # PATCH/PUT /product_types/1
  # PATCH/PUT /product_types/1.json
  def update
    if @product_type.update_attributes(product_type_params)
      redirect_to product_types_path
    else
      render :edit
    end
  end

  def destroy
    @product_type.destroy
    respond_to do |format|
      format.html { redirect_to product_types_url, notice: 'Product type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_product_type
      @product_type = ProductType.includes(:fields).find(params[:id])
    end

    def product_type_params
      params.require(:product_type)
        .permit(:name, 
                fields_attributes: [:id, :name, :field_type, :required, :_destroy])
    end
end
