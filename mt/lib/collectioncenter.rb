class CollectionCenter
  @@products = []


  def self.add_product(product)
    @@products << product
  end

  def self.products
    @@products.map do |product|
      "Sales: #{product.origin}, Category: (#{sale.description}), Products: (#{product.origin})"
    end
  end
end
