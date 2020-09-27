class DeductionsController < ApplicationController
  load_and_authorize_resource

  # GET /deductions
  def index
    @q = Deduction.ransack(params[:q])
    @deductions = @q.result(distinct: true).page(params[:page])
  end

  # GET /deductions/1
  def show
  end

  # GET /deductions/new
  def new
    @deduction = Deduction.new
  end

  # GET /deductions/1/edit
  def edit
  end

  # POST /deductions
  def create
    @deduction = Deduction.new(deduction_params)

    if @deduction.save
      redirect_to @deduction, notice: 'Deduction was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /deductions/1
  def update
    if @deduction.update(deduction_params)
      redirect_to @deduction, notice: 'Deduction was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /deductions/1
  def destroy
    @deduction.destroy
    redirect_to deductions_url, notice: 'Deduction was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deduction
      @deduction = Deduction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deduction_params
      params.require(:deduction).permit(:name, 
      deduction_ranges_attributes:[  
        :id, :_destroy, :minimum_value, :percentual
      ])
    end
end
