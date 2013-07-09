# class to store values of sale into an array


class SaleCenter
  @@sales = []


  def self.add_sale(sale)
    @@sales << sale  # adds each instance of sale into the array
  end

  def self.saleswomen
    @@sales.map do |sale|
    	if "#{sale.store}" == "women"
      		puts "Women Sales: #{sale.name}"  #for each instance this runs and displays womens sales
    	end
  	end
  end

  def self.salesmen
    @@sales.map do |sale|
    	if "#{sale.store}" == "men"
      		puts "Men's Sales: #{sale.name}"  #for each instance this runs and displays mens sales
    	end
  	end
  end

  def self.saleskids
    @@sales.map do |sale|
    	if "#{sale.store}" == "kids"
      		puts "Baby & Kids Sales: #{sale.name}"  #for each instance this runs and displays kids sales
    	end
  	end
  end

  def self.saleshome
    @@sales.map do |sale|
    	if "#{sale.store}" == "home"
      		puts "Home Sales: #{sale.name}"  #for each instance this runs and displays home sales
    	end
  	end
  end


end
