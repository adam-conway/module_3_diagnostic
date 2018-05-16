class StationQuery
  def initialize(zip)
    @zip = zip
  end

  def stations
    raw_stations.map do |station|
      Station.new(station)
    end
  end

  private
    attr_reader :zip

    def raw_stations
      StationService.new(zip).data[:fuel_stations]
    end
end
