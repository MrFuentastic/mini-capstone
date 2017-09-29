class Image < ApplicationRecord
  belongs_to :organ

  validates :url, presence: true
end
