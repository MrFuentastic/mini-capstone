class Organ < ApplicationRecord
    has_many :images
    belongs_to :supplier
    has_many :carted_organs
    has_many :organ_categories
    has_many :categories, through: :organ_categories

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :price, presence: true
    validates :price, numericality: true
    validates :description, length: { in: 200..500 }

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
