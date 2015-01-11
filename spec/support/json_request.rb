module Requests
  module Json
    def json
      @_json ||= HashWithIndifferentAccess.new(JSON.parse(response.body))
    end
  end
end

RSpec.configure do |config|
  config.include Requests::Json, type: :controller
end
