class Order < ApplicationRecord
  belongs_to :organ, optional: true
  belongs_to :user, optional: true
end
