class Order < ApplicationRecord
  belongs_to :user
  has_many :purchases
  has_many :products, through: :purchases
  validates :status, default: "opened"
end
