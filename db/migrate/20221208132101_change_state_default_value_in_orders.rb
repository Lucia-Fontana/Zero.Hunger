class ChangeStateDefaultValueInOrders < ActiveRecord::Migration[7.0]
  def change
    change_column_default :orders, :state, "pending"
  end
end
