class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :carted_organs

  validates :email, uniqueness: true
  # validates :email, format: { with: }

end
