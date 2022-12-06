class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @purchase = Purchase.new(purchase_params)
    @purchase.user = @user
    if @purchase.save
      redirect_to user_path(@purchase.user_id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def purchase_params
    params.require(:purchase).permit(:order_id, :product_id)
  end
end
