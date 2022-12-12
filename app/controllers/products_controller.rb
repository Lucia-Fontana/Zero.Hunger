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
      @products = Product.joins(:business).where(sql_query, query: "%#{params[:query]}%")
      @products = Product.all if @products.length.zero?
    else
      @products = Product.all
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :category, :description, :price, :business_id, :photo)
  end
end
