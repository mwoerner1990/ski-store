class CartedStoresController < ApplicationController
  
  def create
    carted_product = CartedProduct.new(quantity: params[:quantity],
      store_id: params[:store_id],
      user_id: current_user.id,
      status: "carted"
      )
    carted_product.save
    redirect_to '/skis'
  end

  def index
    @carted_products = CartedProduct.where(user_id: current_user.id , status: "carted") 
    render 'index.html.erb'
  end
end
