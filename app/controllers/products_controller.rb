class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_seller!, only:[:new, :create]
  before_action :recommended, only: [:show]
  # GET /products
  # GET /products.json
  def index
    @products = Product.where(["name LIKE ?","%#{params[:search]}%" ])
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @commentable=@product
    @comments=@commentable.comments
    @comment=Comment.new
  end

  # GET /products/new
  def new

    @product = Product.new

  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.seller_id=current_seller.id

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :category,:price, :seller, :specs, :image)
    end
    def recommended
      #selects similar products by selecting the orders where a certain product exists than indexing products bought on the same purchase
      product_id=@product.id

      arr=[]
      temp=[]
      lines=LineItem.joins(:order,:product)
      orders=lines.where("product_id=#{product_id}").select("order_id")
      if orders
      orders.each {|k| arr.push(k[:order_id])}
      jointproducts =lines.where("order_id IN (#{arr.join(',')})")
      similar_products=jointproducts.where("product_id != #{product_id}" )
       if similar_products
         similar_products.each {|k| temp.push(k[:product_id]) }
         @similar_p=Product.where("id IN (#{temp.join(',')})").limit(3)
       end
      end

    end
end
