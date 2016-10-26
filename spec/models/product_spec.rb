require 'rails_helper'

RSpec.describe Product, type: :model do
  # Use .alphabetical because it's a class method. Example: Product.alphabetical
  # Use #long_name when #long_name is an instance method. Example: @product.long_name
  describe ".alphabetical" do
    it "returns [] when there are no products" do
    	products = Product.all
    	expect(products.empty?).to be true
    	expect(products).to eq []
    end

    it "returns [a] when there is only one product a" do
      # a = Product.create!(...)
      products = Product.all
      a=Product.create!(name: "fitted", description: "fitted cap", image: "blah", price_VND: "25000000", weight: "2")
      expect(products.empty?).to eq false
      expect(products).to eq [a]
    end

    it "returns [a,b,c] after I create 3 products c, b, a" do
      # ...
      products = Product.all
      a=Product.create!(name: "fitted", description: "fitted cap", image: "blah", price_VND: "25000000", weight: "2")
      b=Product.create!(name: "snapback", description: "snapback cap", image: "blah", price_VND: "35000000", weight: "3")
      c=Product.create!(name: "mexico", description: "mexico cap", image: "blah", price_VND: "75000000", weight: "5")
      expect(products.empty?).to eq false
      expect(products).to eq [a,c,b]
    end
  end
end