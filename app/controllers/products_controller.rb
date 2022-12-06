class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @products = Product.where("name ILIKE ? OR description ILIKE ? OR category ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%", "%#{params[:query]}%")
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
