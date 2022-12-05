class RemoveUserFromPurchases < ActiveRecord::Migration[7.0]
  def change
    remove_reference :purchases, :user, foreign_key: true
  end
end
