class MarketSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :location_description, :address, :links, :schedule_hours_description, :schedule_season_description

  def address
    address = object
    {
      street: address.street,
      zipcode: address.zipcode,
      city: address.city,
      state: address.state
    }
  end

  def links
    links = object
    {
      web: links.web,
      twitter: links.twitter
    }
  end

end
