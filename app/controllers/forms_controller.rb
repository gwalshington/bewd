class FormsController < ApplicationController
  before_action :set_form, only: [:show, :edit, :update, :destroy]
  

  # GET /forms
  # GET /forms.json
  


  def index


    if params[:query].present?
      query = params[:query]
      @forms = Form.where("lower(form_name) LIKE ?", "%#{query.downcase}%")
    elsif params[:has_payment].present?
      #@has_payment = @company.projects.where(:has_payment =>  true)

      #@has_payment = params[:has_payment]
      @forms = Form.where(:has_payment => true)
    else
      @forms = Form.all
    end
  end

    

  def department
    @form = Form.all
    @department = Form::DEPARTMENT
  end

  def welcome
    @forms = Form.last(10)
    @munis = Municipality.last(10)
  end

  def recent
    @forms = Form.last(10)
    @munis = Municipality.last(10)
  end

  
  def show
  end

  def upvote
    @form = Form.find(params[:id])
    @form.upvote_by current_user
    redirect_to forms_path
  end

  def new


    @form = Form.new
    

  end

  def edit
  end


  def create


    if params[:municipality_id].present?
      @muni_id = Municipality.find(params[:municipality_id])
    else
      @muni_id = 1
    end

    

    @department = Department.all
    @form = Form.new(form_params)
    respond_to do |format|
      if @form.save
        @municipality_id = @form.municipality_id
        format.html { redirect_to municipality_path(@municipality_id) }
        flash[:notice] = 'Form was successfully created.'
        format.json { render :show, status: :created, location: @form }
      else
        format.html { render :new }
        format.json { render json: @form.errors, status: :unprocessable_entity }
        flash[:alert] = @form.errors
      end
    end
  end

  # PATCH/PUT /forms/1
  # PATCH/PUT /forms/1.json
  def update
    respond_to do |format|
      if @form.update(form_params)
        format.html { redirect_to @form, notice: 'Form was successfully updated.' }
        flash[:notice] = 'Form was successfully updated.'
        format.json { render :show, status: :ok, location: @form }
      else
        format.html { render :edit }
        format.json { render json: @form.errors, status: :unprocessable_entity }
        flash[:alert] = @form.errors
      end
    end
  end

  # DELETE /forms/1
  # DELETE /forms/1.json
  def destroy
    @form.destroy
    respond_to do |format|
      format.html { redirect_to forms_url, notice: 'Form was successfully destroyed.' }
      flash[:notice] = 'Form was successfully destroyed.'
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
       #@department = Department.all

       #@department = Department.where(:department_id)
     end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_params
      params.require(:form).permit(:form_name, :form_link, :department_id, :municipality_id, :has_payment)
    end
end
