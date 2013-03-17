module DistanceCalculator
  RADIUS = 6371

  def get_distance(latitude, longitude)
    calc_distance(self.latitude, self.longitude, latitude, longitude)
  end

  private
  def calc_distance(origin_latitude, origin_longitude, destination_latitude, destination_longitude)
    lat1 = to_rad(origin_latitude)
    lat2 = to_rad(destination_latitude)
    lon1 = to_rad(origin_longitude)
    lon2 = to_rad(destination_longitude)
    dLat = lat2-lat1
    dLon = lon2-lon1

    a = Math::sin(dLat/2) * Math::sin(dLat/2) +
         Math::cos(lat1) * Math::cos(lat2) * 
         Math::sin(dLon/2) * Math::sin(dLon/2);
    c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a));
    d = RADIUS * c
  end

  def to_rad angle
    angle * Math::PI / 180 
  end

end
