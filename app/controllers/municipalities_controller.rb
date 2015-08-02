class MunicipalitiesController < ApplicationController
  before_action :set_municipality, only: [:show, :edit, :update, :destroy]



  def index
      @states = State.all
    

    
      if params[:state_id].present?
       @state = params[:state_id]

      #@state = State.where(params[:state_id])
       @municipalities = Municipality.where(state_id: @state)
     else
       @states = Municipality.select('DISTINCT state_id')
       @municipalities = Municipality.all
     end
     
   end

  def show
  end

  def new
    
    @municipality = Municipality.new
    #@state = Municipality::STATE
  end

  def edit
  end

  def create
    @municipality = Municipality.new(municipality_params)

    respond_to do |format|
      if @municipality.save
        format.html { redirect_to @municipality, notice: 'Municipality was successfully created.' }
        format.json { render :show, status: :created, location: @municipality }
      else
        format.html { render :new }
        format.json { render json: @municipality.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @municipality.update(municipality_params)
        format.html { redirect_to @municipality, notice: 'Municipality was successfully updated.' }
        format.json { render :show, status: :ok, location: @municipality }
      else
        format.html { render :edit }
        format.json { render json: @municipality.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @municipality.destroy
    respond_to do |format|
      format.html { redirect_to municipalities_url, notice: 'Municipality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_municipality
      @municipality = Municipality.find(params[:id])
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def municipality_params
      params.require(:municipality).permit(:name, :state_id, :population)
    end


end
