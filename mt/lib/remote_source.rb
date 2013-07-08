require 'json'
require 'rest-client'
require_relative 'sale'
require_relative 'products'

class RemoteSource
  def self.get
    res = JSON.load(RestClient.get('https://api.gilt.com/v1/sales/active.json?apikey=dfae32d1deba6f2e4ffdc2f7c8ed2c07'))
    res["sales"].map do |sale|
      Sale.new sale["name"], sale["description"], sale["products"]
    end
  end


	def self.prod
	  pro = JSON.load(RestClient.get('sale.products.each { |x| return = x }'))
      pro["products"].map do |products|
      	 Products.new products["origin"]
     end
	end


end




