class Department < ActiveRecord::Base
	has_many :forms
	has_many :resources

end
