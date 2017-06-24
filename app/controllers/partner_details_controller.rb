class PartnerDetailsController < ApplicationController
  before_action :set_partner_detail, only: [:show, :edit, :update, :destroy]

  # GET /partner_details
  # GET /partner_details.json
  def index
    @partner_details = PartnerDetail.all
  end

  # GET /partner_details/1
  # GET /partner_details/1.json
  def show
  end

  # GET /partner_details/new
  def new
    @partner_detail = PartnerDetail.new
  end

  # GET /partner_details/1/edit
  def edit
  end

  # POST /partner_details
  # POST /partner_details.json
  def create
    @partner_detail = PartnerDetail.new(partner_detail_params)

    respond_to do |format|
      if @partner_detail.save
        format.html { redirect_to @partner_detail, notice: 'Partner detail was successfully created.' }
        format.json { render :show, status: :created, location: @partner_detail }
      else
        format.html { render :new }
        format.json { render json: @partner_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partner_details/1
  # PATCH/PUT /partner_details/1.json
  def update
    respond_to do |format|
      if @partner_detail.update(partner_detail_params)
        format.html { redirect_to @partner_detail, notice: 'Partner detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @partner_detail }
      else
        format.html { render :edit }
        format.json { render json: @partner_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partner_details/1
  # DELETE /partner_details/1.json
  def destroy
    @partner_detail.destroy
    respond_to do |format|
      format.html { redirect_to partner_details_url, notice: 'Partner detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partner_detail
      @partner_detail = PartnerDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partner_detail_params
      params.require(:partner_detail).permit(:partner_name, :amount, :credit, :debit, :description)
    end
end
