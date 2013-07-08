# api request to get the data for products and store it in sale array in the Product Class


require 'json'
require 'rest-client'
require_relative 'sale'
require_relative 'products'
require_relative 'salecenter' 

class Collection

  	def self.prod


	 puts "#{ SaleCenter.products.each { |sale| sale } }"  # test argument to see if it pust the individual url for products

	  pro = JSON.load(RestClient.get(
		
		 SaleCenter.products.each do |sale|  	#The SaleCenter.products gets the urls of different products for specific sale. eg. all product listings(json url) in a converse sale. Using the url we will get the attributes of the individual product.
			"#{sale}" 							#******  not able to get this as the specific url. it is probably the address
		end


	  	))
      pro["products"].map do |products|			#saves info from the rest client results and saves them into an array in products.
      	 Products.new products["origin"]
     end
	end





end