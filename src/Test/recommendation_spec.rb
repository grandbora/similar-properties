require File.expand_path('../../property', __FILE__)
require File.expand_path('../../recommendation_helper', __FILE__)

describe RecommendationHelper do 

  it "loads properties" do

    recommendationHelper = RecommendationHelper.new
    property_list = [
        Property.new('name1', 2, 12.324, 21.2134),
        Property.new('name2', 2, 12.324, 21.2134),
        Property.new('name3', 2, 12.324, 21.2134),
        Property.new('name4', 2, 12.324, 21.2134),
    ]

    recommendationHelper.property_list=(property_list)
    recommendationHelper.property_list.should eq(property_list)

  end
end
