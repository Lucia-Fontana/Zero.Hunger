class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @user = current_user
    @order = Order.find(params[:id])
  end

  def new
    @purchase = Purchase.find(params[:pruchase_id])

  end

  private
  def purchase_params
    params.require(:purchase).permit(:total_price, :user_id)
  end
end
