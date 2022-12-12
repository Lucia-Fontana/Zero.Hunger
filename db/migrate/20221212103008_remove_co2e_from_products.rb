class RemoveCo2eFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :CO2e
  end
end
