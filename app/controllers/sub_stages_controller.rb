class SubStagesController < ApplicationController
  before_action :set_sub_stage, only: [:show, :edit, :update, :destroy]

  # GET /sub_stages
  def index
    @q = SubStage.ransack(params[:q])
    @sub_stages = @q.result(distinct: true).page(params[:page])
  end

  # GET /sub_stages/1
  def show
  end

  # GET /sub_stages/new
  def new
    @sub_stage = SubStage.new
  end

  # GET /sub_stages/1/edit
  def edit
  end

  # POST /sub_stages
  def create
    @sub_stage = SubStage.new(sub_stage_params)

    if @sub_stage.save
      redirect_to @sub_stage, notice: 'Sub stage was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sub_stages/1
  def update
    if @sub_stage.update(sub_stage_params)
      redirect_to @sub_stage, notice: 'Sub stage was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sub_stages/1
  def destroy
    @sub_stage.destroy
    redirect_to sub_stages_url, notice: 'Sub stage was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_stage
      @sub_stage = SubStage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sub_stage_params
      params.require(:sub_stage).permit(:stage_id, :name,
      task_types_attributes: [
              :id, :name, :_destroy
      ]
        )
    end
end
