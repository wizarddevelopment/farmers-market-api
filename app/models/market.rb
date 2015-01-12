class Market < ActiveRecord::Base
  def self.convert_market_data(market_data)
    market_link = market_data["market_link"]["url"] if market_data["market_link"]
    {
      name: market_data["market_name"],
      latitude: market_data["latitude"],
      longitude: market_data["longitude"],
      location_description: market_data["location"],
      zipcode: market_data["zip"],
      street: market_data["address_line_1"],
      city: market_data["city"],
      state: market_data["state"],
      web: market_link,
      schedule_hours_description: market_data["operation_hours"],
      schedule_season_description: market_data["operation_season"]
    }
  end

  def self.create_or_update_market(market_data)
    market = where(market_data.slice(:name, :zipcode)).first_or_initialize
    market.update!(market_data)
    market
  end

  def self.update_from_external_data
    market_data = JSON.load(open("https://data.ny.gov/resource/n6w2-gz88.json"))
    market_data.map do |market|
      create_or_update_market(convert_market_data(market))
    end
  end
end
