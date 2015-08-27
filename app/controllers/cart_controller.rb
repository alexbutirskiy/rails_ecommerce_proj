#Cart controller
class CartController < ApplicationController
  def index
    if session[:cart]
      @cart = session[:cart]
    else
      @cart = {}
    end
  end

  def add
    #authorize! :add, :cart
    id = params[:id]
    session[:cart] ||= {}

    cart = session[:cart]
    if cart[id]
      cart[id] += 1
    else
      cart[id] = 1
    end
    redirect_to action: :index
  end

  def submit
    session[:cart].each do
      |p, q| puts "#{Product.find(p).name}, #{q}" if p != "submit"
    end
    redirect_to root_path
  end


  def clear_cart
    authorize! :clear_cart, :cart
    session[:cart] = nil
    redirect_to action: :index
  end
end
