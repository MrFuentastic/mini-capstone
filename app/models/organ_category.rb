class OrganCategory < ApplicationRecord
  belongs_to :organ
  belongs_to :category
end
