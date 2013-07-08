# The objective of the code is to make an API request to Gilt.com and get in a json feed. https://dev.gilt.com/documentation/overview.html
# The feed that one gets from the call is in the form of sales. Each sale has a name, descripion etc
# One of the properties is an array of all the products in a particular sale. Each product is a json
# url that needs to be call in to get the product details like price, origin etc.

# The task is to get a feed and store it in an array. Then make specific requests using the products jsons stored int he array.



require_relative 'lib/sale' #creates a link to the Sale class
require_relative 'lib/salecenter' #creates a link to the SaleCenter class
require_relative 'lib/remote_source' #creates a link to RemoteSource class
require_relative 'lib/collection' #creates a link to Collection class
require_relative 'lib/collectioncenter' #creates a link to CollectionCenter class

def show_message(message)
  puts message
end


def add_remote_sales
  RemoteSource.get.each do |sale| 
  	SaleCenter.add_sale sale #adds sale to an array of sales
  end
end

def show_sales
	SaleCenter.sales.each do |sale| #SaleCenter.sales returns an array of sales
	show_message sale  #Sdisplays contents of the sale
  end
end


def add_remote_product
  Collection.prod.each do |product|
  	CollectionCenter.add_product product #adds product to an array of products.
  end
end

def show_product
	CollectionCenter.products.each do |sale| #CollectionCenter.products returns an array of products
	show_message product
  end
end

#calling the functions


add_remote_sales

add_remote_product