class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
  end

  def show
    @purchase = Purchase.find(@purchases.orders.users == current_user)

  end

  def create
    # if current_user.orders.last.open?
    @order = Order.find(params[:order_id])
    @product = Product.find(params[:product_id])
    @purchase = Purchase.new(purchase_params)
    @purchase.order = @order
    @purchase.product = @product
    if @purchase.save
      redirect_to user_path(@purchase.user_id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  #def purchase_params
    #params.require(:purchase).permit(:order_id, :product_id)
  #end
end
