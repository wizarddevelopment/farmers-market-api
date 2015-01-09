# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Market.create(name: "Staten Island Mall Greenmarket", latitude: 40.5819940, longitude: 74.16607, location_description: "Richmond Ave. entrance, in parking lot",
  schedule_hours_description: "Saturday 8am-3pm", schedule_season_description: "June 7 - November 22",
  street: "2655 Richmond Ave", zipcode: 10314, state: "NY", city: "Staten Island", web: "http://www.grownyc.org", twitter:"http://www.twitter.com/NYC"
  )
Market.create(name: "Saint George Greenmarket", latitude: 40.5819940, longitude: 74.07791, location_description: "St. Mark's Pl., Hyatt St., Theater parking lot",
  schedule_hours_description: "Friday 9am-3pm", schedule_season_description: "May 2 - June 9",
  street: "St Marks Pl and Hyatt St", zipcode: 10301, state:"NY", city: "Staten Island", web: "http://www.grownyc.org", twitter:"http://www.twitter.com/NYC"
  )
Market.create(name: "Forest Hills Greenmarket", latitude: 40.5819940, longitude: 73.84639, location_description: "South side of Queens Blvd at 70th Ave.",
  schedule_hours_description:"Monday 1pm-3pm", schedule_season_description: "Year-round",
  street: "Queens Blvd and 70th Ave", zipcode: 11375, state: "NY", city:"Queens", web: "http://www.grownyc.org", twitter:"http://www.twitter.com/NYC"
  )
