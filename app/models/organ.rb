class Organ < ApplicationRecord
    has_many :images
    belongs_to :supplier
    has_many :orders
    has_many :organ_categories
    has_many :categories, through: :organ_categories
  # def supplier
  #   # Supplier.find_by(id: supplier_id)
  # end

  def self.random_organ
    organ = Organ.all
    id_array = []
    organ.each do |org|
      id_array << org[:id]
    end
    id_array.sample
  end

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
