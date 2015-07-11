class Form < ActiveRecord::Base
	belongs_to :municipality
	acts_as_votable
	

	DEPARTMENT = ["Administration", "Animal Shelter", "Building/Zoning", "Clerk", "Emergency Management", "Environmental Health", "Finance", "Health Department", "Human Resources", "Information Technology", "Library", "Parks and Rec", "Public Works", "Purchasing", "Special Events", "Tax Department", "Utilities" ]
	

	def self.search_for(query)
		where('form_name LIKE :query', query: "%#{query}")
	end
	
end

