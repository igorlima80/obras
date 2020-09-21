class WorkplacesController < ApplicationController
  load_and_authorize_resource

  # GET /people
  def index
    @q = Workplace.ransack(params[:q])
    @workplaces = @q.result(distinct: true)
    @workplaces = @workplaces.page(params[:page])
  end

  # GET /workplaces/1
  def show
  end

  # GET /workplaces/new
  def new
    @workplace = Workplace.new
  end

  # GET /workplaces/1/edit
  def edit
  end

  # POST /workplaces
  def create
    @workplace = Workplace.new(workplace_params)

    if @workplace.save
      redirect_to @workplace, notice: 'Workplace was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /workplaces/1
  def update
    if @workplace.update(workplace_params)
      redirect_to @workplace, notice: 'Workplace was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /workplaces/1
  def destroy
    @workplace.destroy
    redirect_to workplaces_url, notice: 'Workplace was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def workplace_params
      params.require(:workplace).permit(:name)
    end
end
