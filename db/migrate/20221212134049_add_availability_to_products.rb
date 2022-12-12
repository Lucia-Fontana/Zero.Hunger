class AddAvailabilityToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :availability, :boolean, default: true
  end
end
