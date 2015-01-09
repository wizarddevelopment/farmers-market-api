module Api

  class MarketController < ApplicationController

    respond_to :json

    def all
      render json: Market.all
    end

    def default_serializer_options
      { root: "Markets" }
    end
  end

end
