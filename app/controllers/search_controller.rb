class SearchController < ApplicationController
  def index
    @stations = StationQuery.new(80220).stations
  end
end
