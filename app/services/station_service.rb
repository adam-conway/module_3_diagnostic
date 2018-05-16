class StationService
  def initialize(zip)
    @zip = zip
  end

  def data
    JSON.parse(response.body, symbolize_names: true)
  end

private
  attr_reader :zip

  def response
    Faraday.get "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?location=#{zip}&radius=6&fuel_type=ELEC,LPG&limit=10&api_key=#{ENV['NREL_API_KEY']}&format=JSON"
  end


end
