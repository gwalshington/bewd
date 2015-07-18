class Story < ActiveRecord::Base
	require "prawn"

Prawn::Document.generate("hello.pdf") do
  text "Hello World!"
end

	def self.search_for(query)
		where('title LIKE :query OR category LIKE :query', query: "%#{query}%")
	end

end
