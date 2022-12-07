class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def new
    # just id because purchase is nested into products
    @product = Product.find(params[:id])
    # need order_id because orders are not nested into products, nor purchases
    @order = Order.find(params[:order_id])
  end

  def create
    if order_status == "open"
      @purchase = Purchase.new(purchase_params)
      if @purchase.save
        redirect_to user_path(@purchase.user_id)
      else
        render :new, status: :unprocessable_entity
      end
    else
      redirect_to products_path
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:order_id, :product_id)
  end

  def order_status
    @user = current_user
    # we need to check if there is any opened order for the current user
    @user.orders.last.status
  end
end
