class MaterialCategoriesController < ApplicationController
  before_action :set_material_category, only: [:show, :edit, :update, :destroy]

  # GET /material_categories
  def index
    @q = MaterialCategory.ransack(params[:q])
    @material_categories = @q.result(distinct: true).page(params[:page])
  end

  # GET /material_categories/1
  def show
  end

  # GET /material_categories/new
  def new
    @material_category = MaterialCategory.new
  end

  # GET /material_categories/1/edit
  def edit
  end

  # POST /material_categories
  def create
    @material_category = MaterialCategory.new(material_category_params)

    if @material_category.save
      redirect_to @material_category, notice: 'Material category was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /material_categories/1
  def update
    if @material_category.update(material_category_params)
      redirect_to @material_category, notice: 'Material category was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /material_categories/1
  def destroy
    @material_category.destroy
    redirect_to material_categories_url, notice: 'Material category was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_category
      @material_category = MaterialCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def material_category_params
      params.require(:material_category).permit(:name,
      materials_attributes: [
              :id, :name, :description, :unity, :_destroy
      ]
      )
    end
end
