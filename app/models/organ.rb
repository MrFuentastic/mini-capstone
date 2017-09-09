class Organ < ApplicationRecord
  def self.search(search)
    where("name ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%")
  end

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
