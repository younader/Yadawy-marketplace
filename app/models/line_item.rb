class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  #calculate the price by multiplying the price of a unit by the quantity
  def total_price
    product.price*quantity
  end
end
