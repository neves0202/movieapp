# api request to get the data for sales and store it in sale array in the Sale Class

require 'json'
require 'rest-client'
require_relative 'sale'
require_relative 'products'

class RemoteSource
  def self.get
    res = JSON.load(RestClient.get('https://api.gilt.com/v1/sales/active.json?apikey=dfae32d1deba6f2e4ffdc2f7c8ed2c07'))
    res["sales"].map do |sale|
      Sale.new sale["name"], sale["description"], sale["store"] #stores the sale informations into an array
    end
  end


end




