class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  # GET /services
  def index
    @q = Service.ransack(params[:q])
    @services = @q.result(distinct: true).page(params[:page])
  end

  # GET /services/1
  def show
  end

  # GET /services/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services
  def create
    @service = Service.new(service_params)

    if @service.save
      redirect_to @service, notice: 'Service was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /services/1
  def update
    if @service.update(service_params)
      redirect_to @service, notice: 'Service was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /services/1
  def destroy
    @service.destroy
    redirect_to services_url, notice: 'Service was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_params
      params.require(:service).permit(:service_type_id, :provider_id, :task_type_id, :construction_id, :expected_date, :description, :total_price, :start_date, :end_date)
    end
end
