class Municipality < ActiveRecord::Base
	has_many :forms
	belongs_to :state
	has_many :resources

	accepts_nested_attributes_for :state

	#STATE = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming",]
	MUNICIPALITY_TYPE = [
		"City", 
		"County", 
		"State Agency"
	]


	validates :municipality_type, :inclusion => MUNICIPALITY_TYPE


	def self.search(state_id)
		where("state_id LIKE ?", "%#{state_id}%")
	end

	def sort_order(population)
      "#{(params[:c] || default.to_s).gsub(/[\s;'\"]/,'')} #{params[:d] == 'down' ? 'DESC' : 'ASC'}"
    end


end
