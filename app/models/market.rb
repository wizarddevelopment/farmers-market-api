class Market < ActiveRecord::Base
  def self.market_data
    market_data = JSON.load(open("https://data.ny.gov/resource/n6w2-gz88.json"))
    markets = market_data.map do |market|
      u = Market.new
      u.name = market["market_name"]
      u.latitude = market["latitude"]
      u.longitude = market["longitude"]
      u.location_description = market["location"]
      u.zipcode = market["zip"]
      u.street = market["address_line_1"]
      u.city = market["city"]
      u.state = market["state"]
      u.web = market["market_link"]["url"] if market.key?("market_link")
      u.schedule_hours_description = market["operation_hours"]
      u.schedule_season_description = market["operation_season"]
      u.save
    end
  end
end
