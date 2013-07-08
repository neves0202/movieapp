# class to store values of sale into an array


class SaleCenter
  @@sales = []


  def self.add_sale(sale)
    @@sales << sale  # adds each instance of sale into the array
  end

  def self.sales
    @@sales.map do |sale|
      "Sales: #{sale.name}, Category: (#{sale.description}), Products: (#{sale.products})"  #for each instance this runs and displays the attributes
    end
  end

    def self.products   
    @@sales.map do |sale|    
      sale.products.each {|x| x} #for each instance of sale this loop runs and returns each instance of the product json
    end
  end



end
