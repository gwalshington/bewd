class Form < ActiveRecord::Base
	belongs_to :municipality, :class_name => "Municipality", :foreign_key => "municipality_id"
	belongs_to :department
	acts_as_votable
	

	DEPARTMENT = ["Administration", "Animal Shelter", "Building/Zoning", "Clerk", "Emergency Management", "Environmental Health", "Finance", "Health Department", "Human Resources", "Information Technology", "Library", "Parks and Rec", "Public Works", "Purchasing", "Special Events", "Tax Department", "Utilities" ]

end

