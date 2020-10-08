class EmploymentsController < ApplicationController
  load_and_authorize_resource
  # GET /employments
  
  def index
    @q = Employment.ransack(params[:q])
    @employments = @q.result(distinct: true).page(params[:page])
  end

  # GET /employments/1
  def show
    get_person
  end

  # GET /employments/new
  def new
    get_person
    @employment= @person.employments.build 
  end

  # GET /employments/1/edit
  def edit
  end

  # POST /employments
  def create
    get_person
    @employment = @person.employments.build(employment_params)  
    if @employment.save
      redirect_to @person, notice: 'Employment was successfully created.'      
    else
      render :new
    end
  end

  # PATCH/PUT /employments/1
  def update
    if @employment.update(employment_params)
      redirect_to @employment.person, notice: 'Employment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /employments/1
  def destroy
    @employment.destroy
    redirect_to employments_url, notice: 'Employment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employment
      @employment = Employment.find(params[:id])
    end

    def get_person
      @person = Person.find(params[:person_id])
    end 

    # Only allow a trusted parameter "white list" through.
    def employment_params
      params.require(:employment).permit(:admission_date, :resignation_date, :base_salary, :occupation_id, :person_id,
        benefits_attributes: [
          :id, :_destroy, :benefit_type_id, :value
        ]
      )
    end
end

