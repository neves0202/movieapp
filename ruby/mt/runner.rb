# The objective of the code is to make an API request to Gilt.com and get in a json feed. https://dev.gilt.com/documentation/overview.html
# The feed that one gets from the call is in the form of sales. Each sale has a name, descripion etc
# The program requests the type of sale info the user wants to see and then displays it.



require_relative 'lib/sale' #creates a link to the Sale class
require_relative 'lib/salecenter' #creates a link to the SaleCenter class
require_relative 'lib/remote_source' #creates a link to RemoteSource class




def show_message(message)
  puts message
end



def get_choice
  gets.to_i
end

def show_menu  #displays menu
  show_message " "
  show_message "Please select a sale category you want to view"
  show_message "1. Women's Store"
  show_message "2. Men's Store"
  show_message "3. Baby & Kids Store"
  show_message "4. The Home Store"
  show_message "5. Exit the Store"
end



def add_remote_sales
  RemoteSource.get.each do |sale| 
  	SaleCenter.add_sale sale #adds sale to an array of sales
  end
end




add_remote_sales




show_message("Welcome to current Gilt.com sales preview")
show_menu
loop do
  choice = get_choice
  if choice == 1
    SaleCenter.saleswomen.each { |sale| }	# displays womens sales
    show_menu
  elsif choice == 2
    SaleCenter.salesmen.each { |sale| }		# displays mens sales
    show_menu
  elsif choice == 3
    add_remote_sales
    SaleCenter.saleskids.each { |sale| }	# displays kids sales
    show_menu
  elsif choice == 4
    add_remote_sales
    SaleCenter.saleshome.each { |sale| }	# displays home sales
    show_menu
  elsif choice ==  5 
    break
  else
    show_message "Invalid Selection"
    show_menu
  end
end

puts "Thank you for using Gilt.com Sale Preview"
puts ""
