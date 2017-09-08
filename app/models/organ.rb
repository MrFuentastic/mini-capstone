class Organ < ApplicationRecord

  def sale_message
    discounted? ? "Discount Item!" : "Everyday Value!"
  end

  def discounted?
    price < 50
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end
