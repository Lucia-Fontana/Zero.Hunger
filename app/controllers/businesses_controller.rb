class BusinessesController < ApplicationController
  def index
    @businesses = Business.all
    # The `geocoded` scope filters only businesses with coordinates
    @markers = @businesses.geocoded.map do |business|
      {
        lat: business.latitude,
        lng: business.longitude
      }
    end
  end
end
