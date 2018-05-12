class SadminController < ApplicationController
  layout 'sadmin'
  before_action :set_product, only: [:listproducts]
  before_action :set_order, only: [:listorders]


  before_action :authenticate_seller!
  def index

  end
  def listproducts

  end
def newproduct
  @product=Product.new
end
def listorders

end
def statistics

  end
  def revenue

  end


  private
  def set_product
    @products =Product.where("seller_id = #{current_seller.id}")



  end
  def set_order
#getting the ordered items

  temp=LineItem.joins(:order,:product)
    @line_items=temp.where("seller_id= #{current_seller.id}")
  end
end
