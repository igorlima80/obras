class BenefitTypesController < ApplicationController
  before_action :set_benefit_type, only: [:show, :edit, :update, :destroy]

  # GET /benefit_types
  def index
    @benefit_types = BenefitType.all
  end

  # GET /benefit_types/1
  def show
  end

  # GET /benefit_types/new
  def new
    @benefit_type = BenefitType.new
  end

  # GET /benefit_types/1/edit
  def edit
  end

  # POST /benefit_types
  def create
    @benefit_type = BenefitType.new(benefit_type_params)

    if @benefit_type.save
      redirect_to @benefit_type, notice: 'Benefit type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /benefit_types/1
  def update
    if @benefit_type.update(benefit_type_params)
      redirect_to @benefit_type, notice: 'Benefit type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /benefit_types/1
  def destroy
    @benefit_type.destroy
    redirect_to benefit_types_url, notice: 'Benefit type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_benefit_type
      @benefit_type = BenefitType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def benefit_type_params
      params.require(:benefit_type).permit(:name)
    end
end
