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
end
