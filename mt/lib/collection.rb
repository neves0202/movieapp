require 'json'
require 'rest-client'
require_relative 'sale'
require_relative 'products'
require_relative 'salecenter' 

class Collection

  	def self.prod


	 puts "#{ SaleCenter.bales.each { |sale| sale } }"

	  pro = JSON.load(RestClient.get(
		
		 SaleCenter.products.each do |sale|  	
			"#{sale}"
		end


	  	))
      pro["products"].map do |products|
      	 Products.new products["origin"]
     end
	end





end