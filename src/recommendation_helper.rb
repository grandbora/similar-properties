class RecommendationHelper
  attr_accessor :property_list

  def get_similar_properties(unavailable)
    @property_list.reject do |property|
      unavailable.bedroom_count > property.bedroom_count
    end
  end

end
