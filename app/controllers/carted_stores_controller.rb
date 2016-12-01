class CartedStoresController < ApplicationController
  
  def create
    CartedStore.create(quantity: params[:quantiy],
      store_id: params[:store_id],
      user_id: current_user.id,
      status: "carted"
      )
    redirect_to '/skis'
  end

  def index
    @carted_store = current_user.id.carted_stores
    render 'index.html.erb'
  end
end
