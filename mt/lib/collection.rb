# api request to get the data for products and store it in sale array in the Product Class


require 'json'
require 'rest-client'
require_relative 'sale'
require_relative 'products'
require_relative 'salecenter' 

class Collection

  	def self.prod
 
 	#puts SaleCenter.products.first.first
	  # test argument to see if it pust the individual url for products

	  pro = JSON.load(RestClient.get('https://api.gilt.com/v1/products/50916032/detail.json?apikey=dfae32d1deba6f2e4ffdc2f7c8ed2c07'))
		
		 #SaleCenter.products.first.first   	#The SaleCenter.products gets the urls of different products for specific sale. eg. all product listings(json url) in a converse sale. Using the url we will get the attributes of the individual product.
										#******  not able to get this as the specific url. it is probably the address
		
										

	  #))
      pro["id"].map do |y|			#Saves info from the rest client results and saves them into an array in products.
      	 
      	 Products.new y
      	 puts y
     end
	end





end