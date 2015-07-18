class NinjasController < ApplicationController
  def index
  	@ninjas = ["Danny", "Mariam", "Anthony"]
  end

  def sneaky
  	@sneaky = "Walsh"
  end
end
