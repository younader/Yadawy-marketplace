class SellerinfosController < ApplicationController
  before_action :set_sellerinfo, only: [:show, :edit, :update, :destroy]

  skip_before_action :complete_sign_up
  # GET /sellerinfos
  # GET /sellerinfos.json
  def index
    @sellerinfos = Sellerinfo.all
  end

  # GET /sellerinfos/1
  # GET /sellerinfos/1.json
  def show
  end

  # GET /sellerinfos/new
  def new
    @sellerinfo = Sellerinfo.new
  end

  # GET /sellerinfos/1/edit
  def edit
  end

  # POST /sellerinfos
  # POST /sellerinfos.json
  def create
    @sellerinfo = Sellerinfo.new(sellerinfo_params)
    @sellerinfo.seller_id=current_seller.id
    respond_to do |format|
      if @sellerinfo.save
        format.html { redirect_to @sellerinfo, notice: 'Sellerinfo was successfully created.' }
        format.json { render :show, status: :created, location: @sellerinfo }
      else
        format.html { render :new }
        format.json { render json: @sellerinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sellerinfos/1
  # PATCH/PUT /sellerinfos/1.json
  def update
    respond_to do |format|
      if @sellerinfo.update(sellerinfo_params)
        format.html { redirect_to @sellerinfo, notice: 'Sellerinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @sellerinfo }
      else
        format.html { render :edit }
        format.json { render json: @sellerinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sellerinfos/1
  # DELETE /sellerinfos/1.json
  def destroy
    @sellerinfo.destroy
    respond_to do |format|
      format.html { redirect_to sellerinfos_url, notice: 'Sellerinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sellerinfo
      @sellerinfo = Sellerinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
  def sellerinfo_params
    params.require(:sellerinfo).permit( :first_name,:last_name,:phone_number,:city,:address,:image, :gender)
  end
end
