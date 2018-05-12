module CurrentCart
  private
  def set_cart
    #checks if the user is signed in as a buyer to use cart functionality
    # if a buyer is logged in, it fetches the cart stored in his session
    # if none was found it creates a new cart

    @cart = Cart.find(session[:cart_id])

  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end

end