class RecommendationHelper
  attr_accessor :property_list

  def get_similar_properties(unavailable)
    @property_list.reject do |property|
      next true if unavailable.bedroom_count > property.bedroom_count
      property.get_distance(unavailable.latitude, unavailable.longitude) > 20
    end
  end

end
