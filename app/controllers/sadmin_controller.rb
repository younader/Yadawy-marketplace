class SadminController < ApplicationController
  layout 'sadmin'
before_action :set_product
  before_action :authenticate_seller!
  def index

  end





  private
  def set_product
    @product=Product.where("id = #{current_seller.id}")
  end
end
