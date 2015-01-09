class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :name
      t.decimal :latitude
      t.decimal :longitude
      t.string :location_description
      t.integer :zipcode
      t.string :street
      t.string :city
      t.string :state
      t.string :web
      t.string :twitter
      t.string :schedule_hours_description
      t.string :schedule_season_description
    end
  end
end
