class Category < ApplicationRecord
  has_many :organ_categories
  has_many :organs, through: :organ_categories

  validates :name, uniqueness: true

end
