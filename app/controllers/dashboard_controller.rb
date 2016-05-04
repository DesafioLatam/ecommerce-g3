class DashboardController < ApplicationController
  def index
    @categories = Category.joins(:products).group(:category_id, "categories.name").pluck("categories.name, count(products.category_id)")
    @products_by_day = Product.group_by_day(:created_at).count
    @products_by_order = Product.includes(:orders).group(:name, :product_id).pluck("products.name", "count(orders.id)")
  end

end
