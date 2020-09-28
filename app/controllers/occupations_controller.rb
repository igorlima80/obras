class OccupationsController < ApplicationController
  load_and_authorize_resource

  # GET /people
  def index
    @q = Occupation.ransack(params[:q])
    @occupations = @q.result(distinct: true)
    @occupations = @occupations.page(params[:page])
  end

  # GET /occupations/1
  def show
  end

  # GET /occupations/new
  def new
    @occupation = Occupation.new
  end

  # GET /occupations/1/edit
  def edit
  end

  # POST /occupations
  def create
    @occupation = Occupation.new(occupation_params)

    if @occupation.save
      redirect_to @occupation, notice: 'Occupation was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /occupations/1
  def update
    if @occupation.update(occupation_params)
      redirect_to @occupation, notice: 'Occupation was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /occupation/1
  def destroy
    @occupation.destroy
    redirect_to occupations_url, notice: 'Occupation was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def occupation_params
      params.require(:occupation).permit(:name)
    end
end
