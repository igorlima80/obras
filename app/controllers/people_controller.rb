class PeopleController < ApplicationController
  load_and_authorize_resource

  # GET /people
  def index
    @q = Person.ransack(params[:q])
    @people = @q.result(distinct: true).page(params[:page])
  end

  # GET /people/1
  def show
  end

  # GET /people/new
  def new
    @person.addresses.build
    @person.build_user
      
    @person.phones.build phone_type: PhoneType.first
    @cities = []
    @cities_address = []
  end

  # GET /people/1/edit
  def edit
    @cities = [ @person.city ]
    @cities_address = @person.addresses.map(&:city)
  end

  # POST /people
  def create
    @person = Person.new(person_params)    

    if @person.save
      redirect_to @person, notice: 'Person was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /people/1
  def update
    if @person.update(person_params)
      redirect_to @person, notice: 'Person was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy
    redirect_to people_url, notice: 'Person was successfully destroyed.'
  end

  def dependents
    render json: @person.people.as_json(only: [:id, :name])
  end

  private
    # Only allow a trusted parameter "white list" through.
    def person_params
      params.require(:person).permit(
        :name, :photo, :father, :mother, :birth, :cpf, :rg, :user_id, :city_id, :registration,
        :place_id, :admission, :county_id, :workplace_id, :business_email, :observations, 
        addresses_attributes: [
            :id, :description, :street, :number, :complement, :district, :zipcode, :city_id, :_destroy
        ],
        phones_attributes: [
            :id, :number, :phone_type_id, :_destroy
        ],
        user_attributes: [
          :id, :_destroy, :name, :email, :password, :_destroy
        ],
        documents_attributes: [
          :id, :_destroy, :document_type_id, :attachment
        ]
      )
    end
end
