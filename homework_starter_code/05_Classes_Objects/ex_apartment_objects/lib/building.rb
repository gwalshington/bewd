#Building Class
class Building

	attr_accessor :building_name, :building_address, :apartments

	def initialize (building_name, building_address)

		@building_name = building_name
		@building_address = building_address
		@apartments = []
	end



	def view_apartments
		@apartments.each do |unit|
  		# apartment = create_apartment
  		# building.apartments[unit] = apartment
  		if unit.renter != []
		puts "Apartment: #{unit.name}"
		puts "sqft: #{unit.apt_sqft}	| bedrooms: #{unit.apt_bedrooms}	| Bathrooms: #{unit.apt_bathrooms}"
		# puts   
		else
			puts "Apartment: #{unit.name}"
			puts "sqft: #{unit.apt_sqft}	| bedrooms: #{unit.apt_bedrooms}	| Bathrooms: #{unit.apt_bathrooms}"
			puts "This apartment is vacant."
		end
	end
	
end
end
