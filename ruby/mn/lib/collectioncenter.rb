#Array to save the data into a products array.

class CollectionCenter
  @@products = []


  def self.add_product(product)
    @@products << product
  end

  def self.products
    @@products.map do |product|
      "Sales: #{product.origin}, Products: (#{product.origin})" #Will use this block in the future to call the specific info about a product.
    end
  end
end
