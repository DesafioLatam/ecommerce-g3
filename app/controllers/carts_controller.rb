class CartsController < ApplicationController
  def show
    @cart = current_user.last_cart
  end
end
