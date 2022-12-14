class PaymentsController < ApplicationController
  def new
    if current_user.orders.where(state: 'pending').empty?
      @order = Order.create(user: current_user)
    else
      @order = current_user.orders.where(state: 'pending').find(params[:order_id])
    end
  end
end
