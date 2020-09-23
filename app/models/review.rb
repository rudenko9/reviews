class Review < ApplicationRecord
  validates :name, presence: true
  validates :model, presence: true
  validates :brand, presence: true
  validates :storage, presence: true
  validates :price, presence: true
  validates :date, presence: true

end
