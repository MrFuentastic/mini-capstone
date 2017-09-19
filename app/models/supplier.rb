class Supplier < ApplicationRecord
  has_many :organs  
  # def organs
  #   # Organs.where(supplier_id: self.id)
  # end
end
