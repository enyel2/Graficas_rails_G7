class DashboardsController < ApplicationController
  def index
  	#creamos una variable que va a contar los elementos de product
  	#@categories = Product.group(:category_id).count
  	@categories = Category.includes(:products).group(:category_id,
  	"categories.name").pluck("categories.name, count(products.category_id)")

  	#:created_at tiene que se una variable de fecha o dia
  	@products_by_day = Product.group_by_day(:created_at).count

  	@products_sold = Product.includes(:orders).group(:product_id, 
  		:name).pluck("products.name, count(orders.product_id)")
  end
end
