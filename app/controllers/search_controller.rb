class SearchController < ApplicationController
  def index
    @stations = StationQuery.new(10).stations
  end
end
