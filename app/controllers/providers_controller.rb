class ProvidersController < ApplicationController
  load_and_authorize_resource


  # GET /providers
  def index
    @q = Provider.ransack(params[:q])
    @providers = @q.result(distinct: true).page(params[:page])
    
  end

  # GET /providers/1
  def show
  end

  # GET /providers/new
  def new
    @provider.addresses.build 
    @provider.bank_accounts.build        
    @provider.phones.build phone_type: PhoneType.first

    @cities = []
    @cities_address = []
  end

  # GET /providers/1/edit
  def edit
   
    @cities_address = @provider.addresses.map(&:city)
  end

  # POST /providers
  def create
    @provider = Provider.new(provider_params)

    if @provider.save
      redirect_to @provider, notice: 'Provider was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /providers/1
  def update
    if @provider.update(provider_params)
      redirect_to @provider, notice: 'Provider was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /providers/1.order(:id)
  def destroy
    @provider.destroy
    redirect_to providers_url, notice: 'Provider was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider
      @provider = Provider.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def provider_params
      params.require(:provider).permit(:company_name, :cnpj, :email, :salesman,
        addresses_attributes: [
              :id, :description, :street, :number, :complement, :district, :zipcode, :city_id, :_destroy
          ],
        phones_attributes: [
              :id, :number, :phone_type_id, :_destroy
        ],
        bank_accounts_attributes: [
          :id, :agency, :number_account, :operation, :bank_id, :_destroy
        ]
      )
    end
end
