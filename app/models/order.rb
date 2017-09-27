class Order < ApplicationRecord
  has_many :carted_organs
  belongs_to :user, optional: true

  def calculate_subtotal
  end

  def calculate_tax
  end

  def calculate_total
  end
end
