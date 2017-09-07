class Organ < ApplicationRecord

  def sale_message
    price < 2 ? "Discount Item!" : "Everyday Value!"
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end
