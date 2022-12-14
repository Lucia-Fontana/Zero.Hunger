class Product < ApplicationRecord
  belongs_to :business
  has_many :purchases, dependent: :destroy
  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :deadline, presence: true
  has_one_attached :photo
  monetize :price_cents
end
