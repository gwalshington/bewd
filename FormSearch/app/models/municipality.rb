class Municipality < ActiveRecord::Base
	has_many :forms, :class_name => "Form", :foreign_key => "form_id"


	STATE = ["New Jeresy"]
end
