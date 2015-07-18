class HomeController < ApplicationController

before_action :authenticate_user!, only: :profile

  def index
  end

  def profile
  	@urls = current_user.urls
  end

end