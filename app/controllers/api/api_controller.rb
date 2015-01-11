class Api::ApiController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

  def record_not_found
    error = {
      errors: {
        status: "404 Not Found"
      }
    }
    render status: :not_found, json: error
  end
end
