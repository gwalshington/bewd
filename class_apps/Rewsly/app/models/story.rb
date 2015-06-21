class Story < ActiveRecord::Base

	def self.search_for(query)
		where('title LIKE :query OR category LIKE :query', query: "%#{query}%")
	end

end
