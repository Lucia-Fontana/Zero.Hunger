class AddCo2eToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :CO2e, :float
  end
end
