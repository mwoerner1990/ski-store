class OrdersController < ApplicationController

  def create
    store = Store.find_by(id: params[:store_id])
    @subtotal = store.price
    @tax = @subtotal * 0.09
    @total = @subtotal + @tax

    order = Order.new(quantity: params[:quantity],
      store_id: params[:store_id],
      user_id: current_user.id,
      subtotal: @subtotal,
      tax: @tax,
      total: @total,
      )
    order.subtotal = order.subtotal * order.quantity
    order.tax = order.tax * order.quantity
    order.total = order.subtotal + order.tax
    order.save
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render 'show.html.erb'
  end

end
