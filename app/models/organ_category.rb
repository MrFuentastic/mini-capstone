class OrganCategory < ApplicationRecord
  belongs_to :organ
  belongs_to :category

  validates :category_id, uniqueness: {scope: :organ_id}
end
