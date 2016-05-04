class OrdersController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @order = @product.orders.build(user:current_user)
    if @order.save
      redirect_to products_path, notice: "La orden ha sido guardada"
    else
      redirect_to products_path, alert: "La orden no ha podido ser guardada"
    end
  end
end
