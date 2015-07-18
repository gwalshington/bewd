class StoriesController < ApplicationController

	def index
		#@stories = Story.all
		@story = Story.search_for(params[:query])
	end

	def show
		@story = Story.find(params[:id])
	end

	private

	def story_params
		params.require(:title).permit(:category, :title)
	end

end