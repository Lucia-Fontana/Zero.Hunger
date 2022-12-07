class Business < ApplicationRecord
  has_many :products
  has_many :purchases, through: :products
end
