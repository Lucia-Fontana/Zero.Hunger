class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def create
    @user = current_user
    # for every purchase, check if the user has a pending order
    if current_user.orders.last.state == "pending"
      # create a purchase, new session Stripe, update order with a new session

      @purchase = Purchase.new
      @purchase.order = current_user.orders.last
      @purchase.product = Product.find(params[:product_id])

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

    else
      # create an order, create the associated purchase and session stripe for the order
      # change order with checkout_id
      @product = Product.find(params[:product_id])
      @purchase = Purchase.new(purchase_params)
      order  = Order.create!(amount_cents: @product.price, state: 'pending', user: current_user)
    end
  end

  def purchase_params
    params.require(:purchase).permit(:order_id, :product_id)
  end
end
