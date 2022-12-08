class Order < ApplicationRecord
  belongs_to :user
  has_many :purchases
  has_many :products, through: :purchases
  monetize :amount_cents
end
