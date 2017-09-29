class CartedOrgan < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :user
  belongs_to :
  
  validates :quantity, presence: true
  validates :quantity, numericality: {only_integer: true, greater_than: 0}

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
