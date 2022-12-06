class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  has_one_attached :photo

  def index
    if params[:query].present?
      @products = Product.where("name ILIKE ? OR description ILIKE ? OR category ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%", "%#{params[:query]}%")
      @products = Product.all if @products.length.zero?
    else
      @products = Product.all
    end
  end
end
