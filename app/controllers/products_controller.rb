class ProductsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def show
    @product = Product.find(params[:id])
    @markers = [{
        lat: @product.business.latitude,
        lng: @product.business.longitude,
        info_window: render_to_string(partial: "info_window", locals: {business: @product.business})
      }]
  end

  def index
    if params[:query].present?
      sql_query = <<~SQL
        products.name ILIKE :query
        OR products.description ILIKE :query
        OR products.category ILIKE :query
        OR businesses.address ILIKE :query
        OR businesses.name ILIKE :query
      SQL
      @products = Product.joins(:business).where(sql_query, query: "%#{params[:query]}%").where(availability: true)
      @products = Product.where(availability: true) if @products.length.zero?
    else
      @products = Product.where(availability: true)
    end
  end


  def new
    if current_user.category == "Retailer"
      @product = Product.new
    else
      flash.alert = "Not allowed." #quick fix as we don't have pundit
      redirect_to root_path
    end
  end

  def create
    @product = Product.new(product_params)
    @product.business_id = current_user.id
    if @product.save
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def delete
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to dashboard_path, notice: "The item has been successfully removed"
  end

  private

  def product_params
    params.require(:product).permit(:name, :category, :quantity, :deadline, :CO2e, :description, :price, :business_id, :photo)
  end
end
