require 'rails_helper'

describe "Station Query" do
  context "searches for stations from api" do
    it 'returns stations' do
      query = StationQuery.new(10)

      expect(query.stations).to eq(10)
    end
  end
end
