#Cart controller
class CartController < ApplicationController
  def index
    # Binding.byebug
    if session[:cart]
      @cart = session[:cart]
    else
      @cart = {}
    end
  end

  def add
    id = params[:id]
#    Binding.byebug
    # unless session[:cart]
      session[:cart] ||= {}
    # end
    cart = session[:cart]
    if cart[id]
      cart[id] += 1
    else
      cart[id] = 1
    end
    redirect_to action: :index
  end

  def clear_cart
    session[:cart] = nil
    redirect_to action: :index
  end
end
