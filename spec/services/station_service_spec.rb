require 'rails_helper'

describe "Station Service" do
  context "searches for stations from api" do
    it 'returns stations' do
      # VCR.use_cassette('stations-service') do
        json = StationService.new(80220).data

        expect(json[:fuel_stations].first).to have_key(:station_name)
        expect(json[:fuel_stations].first[:station_name]).to be_a String

        expect(json[:fuel_stations].first).to have_key(:street_address)
        expect(json[:fuel_stations].first[:street_address]).to be_a String

        expect(json[:fuel_stations].first).to have_key(:city)
        expect(json[:fuel_stations].first[:city]).to be_a String

        expect(json[:fuel_stations].first).to have_key(:state)
        expect(json[:fuel_stations].first[:state]).to be_a String

        expect(json[:fuel_stations].first).to have_key(:fuel_type_code)
        expect(json[:fuel_stations].first[:fuel_type_code]).to be_a String

        expect(json[:fuel_stations].first).to have_key(:distance)
        expect(json[:fuel_stations].first[:distance]).to be_a Float

        expect(json[:fuel_stations].first).to have_key(:access_days_time)
        expect(json[:fuel_stations].first[:access_days_time]).to be_a String
      # end
    end
  end
end
