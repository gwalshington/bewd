class Form < ActiveRecord::Base
	belongs_to :municipality
	belongs_to :department
	acts_as_votable
	

	#DEPARTMENT = ["Administration", "Animal Shelter", "Building/Zoning", "Clerk", "Emergency Management", "Environmental Health", "Finance", "Health Department", "Human Resources", "Information Technology", "Library", "Parks and Rec", "Public Works", "Purchasing", "Special Events", "Tax Department", "Utilities" ]
	

	def self.search_for(query)
		where(:all, :conditions => ['UPPER(form_name) LIKE ?', "%#{query.upcase}%"])
		#where('form_name LIKE :query', query: "%#{query}")
	end

	FORM_TYPE = [
		"SeamlessDoc", 
		"Web Form", 
		"Wizard"
	]
	
end

