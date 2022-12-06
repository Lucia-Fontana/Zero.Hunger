class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :category, :description, :deadline_for_consumption, :photo)
  end
end
