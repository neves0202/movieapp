class SaleCenter
  @@sales = []


  def self.add_sale(sale)
    @@sales << sale
  end

  def self.sales
    @@sales.map do |sale|
      "Sales: #{sale.name}, Category: (#{sale.description}), Products: (#{sale.products})"
    end
  end

    def self.products
    @@sales.map do |sale|
      sale.products.each {|x| x}
    end
  end



end
