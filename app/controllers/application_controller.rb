class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

before_action :complete_sign_up

private
  def complete_sign_up
    if buyer_signed_in? and current_buyer.buyerinfo.nil?
      redirect_to new_buyerinfo_path

    end
  end

end
