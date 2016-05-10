class ResourcesController < ApplicationController
  before_filter :authenticate_user!

  before_action :set_resource, only: [:show, :edit, :update, :destroy]


  # GET /resources
  # GET /resources.json
  def index
    @resource = Resource.all
    @municipality = Municipality.all
    @payment_provider = Municipality::PAYMENT_PROVIDER
    @genre = Resource::GENRE
    @website_provider = Municipality::WEBSITE_PROVIDER

    # if @municipality.referral != nil
    #   @referral_present = true
    # else
    #   @referral_present = nil
    # end




    # @resources = Resource.all
    # @procurement_resources = Resource.where(genre: 'Procurement')
  end

  # GET /resources/1
  # GET /resources/1.json
  def show
  end

  # GET /resources/new
  def new
    @resource = Resource.new
  end

  # GET /resources/1/edit
  def edit
  end

  # POST /resources
  # POST /resources.json
  def create
    @resource = Resource.new(resource_params)

    respond_to do |format|
      if @resource.save
        format.html { redirect_to @resource, notice: 'Resource was successfully created.' }
        format.json { render :show, status: :created, location: @resource }
        flash[:notice] = 'Resource was successfully created.'
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
        flash[:alert] = @resource.errors
      end
    end
  end

  # PATCH/PUT /resources/1
  # PATCH/PUT /resources/1.json
  def update
    respond_to do |format|
      if @resource.update(resource_params)
        format.html { redirect_to @resource, notice: 'Resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource }
        flash[:notice] = 'Resource was successfully updated.'
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
        flash[:alert] = @resource.errors
      end
    end
  end

  # DELETE /resources/1
  # DELETE /resources/1.json
  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to resources_url, notice: 'Resource was successfully destroyed.' }
      format.json { head :no_content }
      flash[:notice] = 'Resource was successfully destroyed.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource
      @resource = Resource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_params
      params.require(:resource).permit(:resource, :genre, :url, :state_id, :municipality_id, :department_id)
    end
end
