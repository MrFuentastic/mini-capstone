class CartedOrgansController < ApplicationController
  before_action :authenticate_user!

  def index
    @cart = CartedOrgan.where(user_id: current_user.id, status: "carted")
  end
  
  def create
    cart = CartedOrgan.new(
                          user_id: current_user.id,
                          organ_id: params[:organ_id],
                          quantity: params[:quantity],
                          status: "carted"
    )
    cart.save
    flash[:success] = "Item added to carrito!"
    redirect_to "/cart"
  end
end