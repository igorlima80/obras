class TaxesController < ApplicationController
  load_and_authorize_resource

  # GET /taxes
  def index
    @q = Tax.ransack(params[:q])
    @taxes = @q.result(distinct: true).page(params[:page])
  end

  # GET /taxes/1
  def show
  end

  # GET /taxes/new
  def new
    @tax = Tax.new
  end

  # GET /taxes/1/edit
  def edit
  end

  # POST /taxes
  def create
    @tax = Tax.new(tax_params)

    if @tax.save
      redirect_to @tax, notice: 'Tax was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /taxes/1
  def update
    if @tax.update(tax_params)
      redirect_to @tax, notice: 'Tax was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /taxes/1
  def destroy
    @tax.destroy
    redirect_to taxes_url, notice: 'Tax was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax
      @tax = Tax.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tax_params
      params.require(:tax).permit(:name,
      tax_ranges_attributes:[  
        :id, :_destroy, :minimum_value, :percentual
      ])
    end
end
