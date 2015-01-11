class Api::MarketsController < Api::ApiController
  respond_to :json

  def index
    render json: Market.all
  end

  def show
    render json: Market.find_by!(id: params[:id])
  end

  def default_serializer_options
    { root: "markets" }
  end
end
