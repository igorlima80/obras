class PurchasesController < ApplicationController
  before_action :set_purchase, only: [:show, :edit, :update, :destroy]

  # GET /purchases
  def index
    @q = Purchase.ransack(params[:q])
    @purchases = @q.result(distinct: true).page(params[:page])
  end

  # GET /purchases/1
  def show
  end

  # GET /purchases/new
  def new
    @purchase = Purchase.new
  end

  # GET /purchases/1/edit
  def edit
  end

  # POST /purchases
  def create
    @purchase = Purchase.new(purchase_params)

    if @purchase.save
      redirect_to @purchase, notice: 'Purchase was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /purchases/1
  def update
    if @purchase.update(purchase_params)
      redirect_to @purchase, notice: 'Purchase was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /purchases/1
  def destroy
    @purchase.destroy
    redirect_to purchases_url, notice: 'Purchase was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase
      @purchase = Purchase.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def purchase_params
      params.require(:purchase).permit(:expected_date, :construction_id, :provider_id, :status, :task_type_id,
        purchase_items_attributes: [
          :id, :amount, :unity_price, :total_price, :material_id, :_destroy
        ])
    end
end
