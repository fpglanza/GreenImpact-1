class FlatsController < ApplicationController
    before_action :set_flat, only: [:show, :edit, :update, :destroy]
    def index
      @flats = Flat.all
  
      # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
      @markers = @flats.geocoded.map do |flat|
        {
          lat: flat.latitude,
          lng: flat.longitude
        }
      end
    end
  end