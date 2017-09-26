class OrdersController < ApplicationController

  def create
    carts = CartedOrgan.where(user_id: current_user.id, status: "carted")
    order = Order.new(
                      user_id: current_user.id,
                      )
    order.save

    subtotals = 0
    taxes = 0
    totals = 0

    carts.each do |item|
      item.update(
                  status: "ordered",
                  order_id: order.id
                  )
      subtotals += item.subtotal
      taxes += item.tax
      totals += item.total
    end

    order.update(
                  subtotal: subtotals,
                  tax: taxes,
                  total: totals
    )

    flash[:success] = "You have successfully ordered some stuff"
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
