class SearchController < ApplicationController
  def index
    @stations = StationQuery.new(params[:q]).stations
  end
end
