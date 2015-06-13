class ShirtsController < ApplicationController
	before_action :set_shirt, only: [:edit, :show, :update, :destroy]

  def index
  	@shirts = Shirt.search_for(params[:query])
  end

  def show
  end

  def new
  	@shirt = Shirt.new
  end

  def create
  	@shirt = Shirt.create(shirt_params)
  	redirect_to @shirt, notice: "Shirt was created."
  end

  def edit
  end

  def update
  	@shirt.update(shirt_params)
  	redirect_to @shirt, notice: "Shirt was updated."
  end

  def destroy
  	@shirt.destroy
  	#flash[:notice] = "Shirt was deleted"
  	redirect_to shirts_path, notice: "Shirt was deleted."
  end


  private

  def shirt_params
  	params.require(:shirt).permit(:name, :description, :image)
  end

  def set_shirt
  	  @shirt = Shirt.find(params[:id])
  end

end
