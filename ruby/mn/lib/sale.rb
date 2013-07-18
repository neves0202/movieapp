# class to store values of sale attributes into an array

class Sale

	attr_accessor :name, :description, :products

		def initialize(name, description, products)
			@name = name
			@description = description
			@products = products
		end


end
