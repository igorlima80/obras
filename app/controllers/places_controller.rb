class PlacesController < ApplicationController
  load_and_authorize_resource

  # GET /people
  def index
    @q = Place.ransack(params[:q])
    @places = @q.result(distinct: true)
    @places = @places.page(params[:page])
  end

  # GET /places/1
  def show
  end

  # GET /places/new
  def new
    @place = Place.new
  end

  # GET /places/1/edit
  def edit
  end

  # POST /places
  def create
    @place = Place.new(place_params)

    if @place.save
      redirect_to @place, notice: 'Place was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /places/1
  def update
    if @place.update(place_params)
      redirect_to @place, notice: 'Place was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /places/1
  def destroy
    @place.destroy
    redirect_to places_url, notice: 'Place was successfully destroyed.'
  end

  private
    # Only allow a trusted parameter "white list" through.
    def place_params
      params.require(:place).permit(:name)
    end
end
