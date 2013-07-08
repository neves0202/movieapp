require_relative 'lib/sale' #creates a link to the StoryBoard class
require_relative 'lib/salecenter' #creates a link to the Story class.
require_relative 'lib/remote_source' #creates a link to RemoteSource class

def show_message(message)
  puts message
end


def add_remote_sales
  RemoteSource.get.each do |sale|
  	SaleCenter.add_sale sale #adds story to an array of sales.
  end
end

def show_sales
	SaleCenter.sales.each do |sale| #StoryBoard.stories returns an array of stories
	show_message sale
  end
end

add_remote_sales
show_sales