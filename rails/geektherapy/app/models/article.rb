class Article < ActiveRecord::Base
	
	validates :questions, :description, :category, presence:true
	validates :description, length: { minimum: 10}

	def self.search_for(query)
		Article.where("questions LIKE :query OR description LIKE :query", query: "%#{query}%")
	end

end
