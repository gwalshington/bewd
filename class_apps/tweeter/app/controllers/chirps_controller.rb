class ChirpsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]


  def index
  	@chirp = Chirp.all
  end

  def new
  	@chirp = Chirp.new
  end

  def create
  	@chirp = Chirp.new(params.require(:chirp).permit(:body).merge(user: current_user))
  	if @chirp.save
  		redirect_to root_path, notice: "Chirp! Chirp! Chirp!"
  	else
  		render :new
  	end
  end
end
