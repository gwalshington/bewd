class FormsController < ApplicationController
  before_action :set_form, only: [:show, :edit, :update, :destroy]


  # GET /forms
  # GET /forms.json
  


  def index

    # @forms = Form.all

    if params[:query].present?
      @forms = Form.search_for(params[:query])
      # @municipalities = Municipality.where(form_name: @forms.form_name)
      
    else
      @forms = Form.all
    end
  end

    

  def department
    @form = Form.all
    @department = Form::DEPARTMENT
  end

  def welcome
    
  end

  def recent
    @forms = Form.last(10)
  end

  

  # GET /forms/1
  # GET /forms/1.json
  def show
  end

  def upvote
    @form = Form.find(params[:id])
    @form.upvote_by current_user
    redirect_to forms_path
  end

  # GET /forms/new
  def new
    @form = Form.new
  end

  # GET /forms/1/edit
  def edit
  end

  # POST /forms
  # POST /forms.json
  def create
    @form = Form.new(form_params)
    respond_to do |format|
      if @form.save
        format.html { redirect_to @form, notice: 'Form was successfully created.' }
        format.json { render :show, status: :created, location: @form }
      else
        format.html { render :new }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forms/1
  # PATCH/PUT /forms/1.json
  def update
    respond_to do |format|
      if @form.update(form_params)
        format.html { redirect_to @form, notice: 'Form was successfully updated.' }
        format.json { render :show, status: :ok, location: @form }
      else
        format.html { render :edit }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forms/1
  # DELETE /forms/1.json
  def destroy
    @form.destroy
    respond_to do |format|
      format.html { redirect_to forms_url, notice: 'Form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def find_departments
    Deparment.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
     def set_form
       @form = Form.find(params[:id])
     end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_params
      params.require(:form).permit(:form_name, :form_link, :form_department, :municipality_id)
    end
end
