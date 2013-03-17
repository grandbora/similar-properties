require File.expand_path('../distance_calculator', __FILE__)

class Property
  include DistanceCalculator

  attr_reader :name
  attr_reader :bedroom_count
  attr_reader :latitude
  attr_reader :longitude

  def initialize(name, bedroom_count, latitude, longitude)
    @name = name
    @bedroom_count = bedroom_count
    @latitude = latitude
    @longitude = longitude
  end

end
