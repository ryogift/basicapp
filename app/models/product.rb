class Product < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }, uniqueness: true
end
