class SadminController < ApplicationController
  layout 'sadmin'
  before_action :set_product, only: [:listproducts]
  before_action :set_order, only: [:listorders]
  before_action :set_basics, only: [:index]


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
  def set_basics
    @number_of_products =Product.where("seller_id = #{current_seller.id}").count
    rev=0
    LineItem.joins(:order,:product).each {|k| temp=Product.find("#{k[:product_id]}").price
    rev+= k[:quantity]*temp

    }
    @revenue=rev

    @data={
        :labels => 5.downto(0).collect do |n|
          Date::MONTHNAMES[n.months.ago.month]
        end,
        :datasets=> [
            {
                label: "My First dataset",
                backgroundColor: "rgba(220,220,220,0.2)",
                borderColor: "rgba(220,220,220,1)",
                data: [0..5].each_index {|k|
                  temp=ActiveRecord::Base.connection.exec_query("SELECT count(*) as count, strftime('%m', created_at) as Month,product_id,quantity from line_items GROUP BY Month")
                  if temp
                  return temp[k]["count"]
                  else
                    return 0
                  end
                }
            },
            {
                label: "My Second dataset",
                backgroundColor: "rgba(151,187,205,0.2)",
                borderColor: "rgba(151,187,205,1)",
                data: [28, 48, 40, 19, 86, 27, 90]
            }
        ]
    }
    @options=[]
  end
end
