class Order < ApplicationRecord
  has_many :carted_organs
  belongs_to :user, optional: true
end
