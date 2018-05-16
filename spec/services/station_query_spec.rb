require 'rails_helper'

describe "Station Query" do
  context "searches for stations from api" do
    it 'returns stations' do
      # VCR.use_cassette('stations-query') do
        query = StationQuery.new(80220)

        expect(query.stations.count).to eq(10)
        expect(query.stations.first).to be_a Station
      # end
    end
  end
end
