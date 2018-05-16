require 'rails_helper'

describe "Station Service" do
  context "searches for stations from api" do
    it 'returns stations' do
      json = StationService.new(80220).data

      expect(json[:fuel_stations].first).to have_key(:station_name)
      expect(json[:fuel_stations].first).to have_key(:street_address)
      expect(json[:fuel_stations].first).to have_key(:city)
      expect(json[:fuel_stations].first).to have_key(:state)
      expect(json[:fuel_stations].first).to have_key(:fuel_type_code)
      expect(json[:fuel_stations].first).to have_key(:distance)
      expect(json[:fuel_stations].first).to have_key(:access_days_time)
    end
  end
end
