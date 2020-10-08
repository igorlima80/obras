class WorkDiariesController < ApplicationController
  before_action :set_work_diary, only: [:show, :edit, :update, :destroy]

  # GET /work_diaries
  def index
    get_construction
    @work_diaries = @construction.work_diaries.page(params[:page]) 
  end

  # GET /work_diaries/1
  def show
  end

  # GET /work_diaries/new
  def new
    get_construction
    @work_diary = @construction.work_diaries.build 
  end

  # GET /work_diaries/1/edit
  def edit
 
  end

  # POST /work_diaries
  def create
    get_construction
    @work_diary = @construction.work_diaries.build(work_diary_params)  

    if @work_diary.save
      redirect_to @work_diary, notice: 'Work diary was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /work_diaries/1
  def update
    if @work_diary.update(work_diary_params)
      redirect_to @work_diary, notice: 'Work diary was successfully updated.'
    else
      render :edit
    end
  end
  def get_construction
    @construction = Construction.find(params[:construction_id])
  end 
  # DELETE /work_diaries/1
  def destroy
    @work_diary.destroy
    redirect_to work_diaries_url, notice: 'Work diary was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_diary
      @work_diary = WorkDiary.find(params[:id])
    end

    def get_construction
      @construction = Construction.find(params[:construction_id])
    end 

    # Only allow a trusted parameter "white list" through.
    def work_diary_params
      params.require(:work_diary).permit(:work_date, :activities_description, :start_time, :end_time, :construction_id, :stage_id,
        problems_attributes: [
          :id, :name, :description, :_destroy
        ],
        wheaters_attributes: [
          :id, :climate_condition, :shift, :_destroy
        ],
        frequencies_attributes: [
          :id, :start, :finish, :presence, :employment_id, :_destroy
        ],
        documents_attributes: [
          :id, :_destroy, :document_type_id, :attachment
        ],
        photos_attributes: [
          :id, :_destroy, :image
        ]
        
      )
    end
end
