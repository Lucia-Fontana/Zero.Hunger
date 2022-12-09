class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
  end

  def show
    @purchase = Purchase.find(@purchases.orders.users == current_user)
  end

  def new
    # just id because purchase is nested into products
    @product = Product.find(params[:id])
    # need order_id because orders are not nested into products, nor purchases
    @order = Order.find(params[:order_id])
  end

  # def create
    # if order_status == "open"
      # @purchase = Purchase.new(purchase_params)
      # if @purchase.save
        # redirect_to user_path(@purchase.user_id)
      # else
        # render :new, status: :unprocessable_entity
      # end
    # else
      # redirect_to products_path

  def create
    @user = current_user
    # for every purchase, check if the user has a pending order
    if current_user&.orders&.last&.state == "pending"
      # create a purchase, new session Stripe, update order with a new session

      @purchase = Purchase.new
      @purchase.order = current_user.orders.where(state: "pending").last
      @purchase.product = Product.find(params[:product_id])
      @purchase.save!

      line_items = []
      current_user.orders.where(state: "pending").last.products.each do |product|
        line_items << {
          price_data: {
            currency: 'eur',
            product_data: {
              name: product.name,
            },
            unit_amount: product.price_cents,
          },
          quantity: 1,
        }
      end

      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],

        line_items: [{
          price_data: {
            currency: 'eur',
            product_data: {
              name: @purchase.product.name,
            },
            unit_amount: @purchase.product.price_cents,
          },
          quantity: 1,
        }],
        mode: 'payment',
        success_url: order_url(@purchase.order),
        cancel_url: order_url(@purchase.order)
      )

      @purchase.order.update(checkout_session_id: session.id)
      redirect_to new_order_payment_path(@purchase.order)

    # @order = Order.find(params[:order_id])
    # @product = Product.find(params[:product_id])
    # @purchase = Purchase.new(purchase_params)
    # @purchase.order = @order
    # @purchase.product = @product
    #if @purchase.save
    #  redirect_to user_path(@purchase.user_id)

     else
      # create an order, create the associated purchase and session stripe for the order
      # change order with checkout_id
      @product = Product.find(params[:product_id])
      order  = Order.create!(amount_cents: @product.price, state: 'pending', user: current_user)
      @purchase = Purchase.create!(product: @product, order: order)
      redirect_to new_order_payment_path(@purchase.order)
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:order_id, :product_id)
  end

  # def order_status
    # @user = current_user
    # we need to check if there is any opened order for the current user
    # @user.orders.last.status
  # end
end
