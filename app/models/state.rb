class State < ActiveRecord::Base
  has_many :municipalities
  has_many :resources

  def sort_order(default)
      "#{(params[:c] || default.to_s).gsub(/[\s;'\"]/,'')} #{params[:d] == 'down' ? 'DESC' : 'ASC'}"
  end
end
