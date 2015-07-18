class UrlsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def new
		@url = Url.new
	end

	def create
		@url = Url.new(url_params)
		@url.random_code = rand(10000)
		@url.user = current_user
		@url.save
		redirect_to url_path(@url)
	end

	def show
		@url = Url.find(params[:id])
	end

	private

	def url_params
		params.require(:url).permit(:url)
	end

	

end