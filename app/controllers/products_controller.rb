class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  # def index
  #   if params[:query].present?
  #     @products = Product.where("name ILIKE ? OR description ILIKE ? OR category ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%", "%#{params[:query]}%")
  #     @products = Product.all if @products.length.zero?
  #   else
  #     @products = Product.all
  #   end
  # end

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
end
