class OrdersController < ApplicationController

  def create
    order = Order.create(
                          user_id: current_user.id,
                          quantity: params[:quantity]
                        )
    flash[:success] = "You have successfully ordered that thing"
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
