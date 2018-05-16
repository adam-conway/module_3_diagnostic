require 'rails_helper'

describe "Station model" do
  context "instance methods" do
    let(:attributes) {
      {
        station_name: "U-Haul",
        street_address: "8150 E Colfax Ave",
        city: "Denver",
        state: "CO",
        fuel_type_code: "ELEC",
        distance: 1.46503,
        access_days_time: "24 hours daily"
      }
    }

    it 'exists with proper attributes' do
      station = Station.new(attributes)

      expect(station.name).to eq("U-Haul")
      expect(station.address).to eq("8150 E Colfax Ave Denver, CO")
      expect(station.fuel_types).to eq("ELEC")
      expect(station.distance).to eq(1.46503)
      expect(station.access_times).to eq("24 hours daily")
    end
  end
end
