class Product < ApplicationRecord
  belongs_to :business
  has_many :purchases
  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :deadline, presence: true
end
