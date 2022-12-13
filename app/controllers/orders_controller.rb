class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @user = current_user
    @order = current_user.orders.find(params[:id])
    @allpurchases = @order.purchases
    @locations = []
    @purchases = []
    @allpurchases.each do |purchase|
      address = purchase.product.business.address
      unless @locations.include?(address)
        @locations << address
      end
    end
    @address1_articles = []
    @address2_articles = []
    @address3_articles = []
    @address4_articles = []
    @address5_articles = []
    @address6_articles = []
    @address1 = @locations[0]
    @address2 = @locations[1] unless @locations[1].nil?
    @address3 = @locations[2] unless @locations[2].nil?
    @address4 = @locations[3] unless @locations[3].nil?
    @address5 = @locations[4] unless @locations[4].nil?
    @address6 = @locations[5] unless @locations[5].nil?
    @allpurchases.each do |purchase|
      @address1_articles << purchase if purchase.product.business.address == @address1
      @address2_articles << purchase if purchase.product.business.address == @address2
      @address3_articles << purchase if purchase.product.business.address == @address3
      @address4_articles << purchase if purchase.product.business.address == @address4
      @address5_articles << purchase if purchase.product.business.address == @address5
      @address6_articles << purchase if purchase.product.business.address == @address6
    end
    @order.destroy
  end

  def new
    @user = current_user
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
