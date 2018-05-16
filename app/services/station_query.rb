class StationQuery
  def initialize(zip)
    @zip = zip
  end

  def stations
    raw_stations.each do |station|
    end
  end

  private
    attr_reader :zip

    def raw_stations
      StationService.new(zip).data
    end
end
