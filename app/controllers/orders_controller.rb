class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @user = current_user
    @order = current_user.orders.find(params[:id])
  end

  def new
    @order = Order.new
    @purchase = Purchase.find(params[:purchase_id])
  end

  def create
    @order = Order.new(list_params)
    @order.save
    redirect_to order_path(@order)
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to order_path(@order)
  end

  private
  
  def purchase_params
    params.require(:purchase).permit(:user_id)
  end
end
