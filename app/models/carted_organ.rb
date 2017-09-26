class CartedOrgan < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :user
  belongs_to :organ

  def subtotal
    organ.price * quantity
  end

  def tax
    subtotal * 0.09
  end

  def total
    subtotal + tax
  end
end
