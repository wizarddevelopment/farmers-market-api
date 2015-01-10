class Market < ActiveRecord::Base
  def self.create_or_update_market(market)
    where("name = ? And zipcode = ?", market["market_name"], market["zip"]).first_or_create.update!(
      name: market["market_name"],
      latitude: market["latitude"],
      longitude: market["longitude"],
      location_description: market["location"],
      zipcode: market["zip"],
      street: market["address_line_1"],
      city: market["city"],
      state: market["state"],
      web: (market["market_link"]["url"] if market["market_link"]),
      schedule_hours_description: market["operation_hours"],
      schedule_season_description: market["operation_season"]
    )
  end

  def self.update_from_external_data
    market_data = JSON.load(open("https://data.ny.gov/resource/n6w2-gz88.json"))
    market_data.map do |market|
      create_or_update_market(market)
    end
  end
end
