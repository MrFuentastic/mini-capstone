class OrdersController < ApplicationController

  def create
    order = Order.new(
                          user_id: current_user.id,
                          quantity: params[:quantity],
                          organ_id: params[:organ_id]
                        )
    order.subtotal = order.organ.price * order.quantity
    order.tax = order.organ.tax * order.quantity
    order.total = order.organ.total * order.quantity
    order.save
    
    flash[:success] = "You have successfully ordered that thing"
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
