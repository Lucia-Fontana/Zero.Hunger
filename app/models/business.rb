class Business < ApplicationRecord
  has_many :products
  has_many :purchases, through: :products
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
