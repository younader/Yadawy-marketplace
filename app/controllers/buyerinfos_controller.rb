class BuyerinfosController < ApplicationController
  before_action :set_buyerinfo, only: [:show, :edit, :update, :destroy]
skip_before_action :complete_sign_up
  # GET /buyerinfos
  # GET /buyerinfos.json
  def index
    @buyerinfos = Buyerinfo.all
  end

  # GET /buyerinfos/1
  # GET /buyerinfos/1.json
  def show
  end

  # GET /buyerinfos/new
  def new
    @buyerinfo = Buyerinfo.new
  end

  # GET /buyerinfos/1/edit
  def edit
  end

  # POST /buyerinfos
  # POST /buyerinfos.json
  def create
    @buyerinfo = Buyerinfo.new(buyerinfo_params)
    @buyerinfo.buyer_id=current_buyer.id


    respond_to do |format|
      if @buyerinfo.save
        format.html { redirect_to @buyerinfo, notice: 'Buyerinfo was successfully created.' }
        format.json { render :show, status: :created, location: @buyerinfo }
      else
        format.html { render :new }
        format.json { render json: @buyerinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buyerinfos/1
  # PATCH/PUT /buyerinfos/1.json
  def update
    respond_to do |format|
      if @buyerinfo.update(buyerinfo_params)
        format.html { redirect_to @buyerinfo, notice: 'Buyerinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @buyerinfo }
      else
        format.html { render :edit }
        format.json { render json: @buyerinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buyerinfos/1
  # DELETE /buyerinfos/1.json
  def destroy
    @buyerinfo.destroy
    respond_to do |format|
      format.html { redirect_to buyerinfos_url, notice: 'Buyerinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buyerinfo
      @buyerinfo = Buyerinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buyerinfo_params
      params.require(:buyerinfo).permit( :fname,:lname,:phone,:city,:address,:image)
    end
end
