require File.expand_path('../../property', __FILE__)
require File.expand_path('../../recommendation_helper', __FILE__)

describe RecommendationHelper do 

  before(:each) do
    @recommendation_helper = RecommendationHelper.new
  end  

  it "loads properties" do
    property_list = [
      Property.new('name1', 2, 12.324, 21.2134),
      Property.new('name2', 2, 12.324, 21.2134),
      Property.new('name3', 2, 12.324, 21.2134),
      Property.new('name4', 2, 12.324, 21.2134),
    ]

    @recommendation_helper.property_list=property_list
    @recommendation_helper.property_list.should eq(property_list)
  end

  context "returns similar properties by bedroom count" do

    before(:each) do
      @property1 = Property.new('name1', 1, 12.324, 21.2134)
      @property2 = Property.new('name2', 2, 12.324, 21.2134)
      @property3 = Property.new('name3', 2, 12.324, 21.2134)
      @property4 = Property.new('name4', 3, 12.324, 21.2134)
      @property5 = Property.new('name5', 5, 12.324, 21.2134)
      @property_list =[@property1, @property2, @property3, @property4, @property5]
      @recommendation_helper.property_list= @property_list
    end
    
    it "all of them are similar" do
      unavailable = Property.new('unavailable', 1, 12.324, 21.2134)
      actual = @recommendation_helper.get_similar_properties(unavailable)
      actual.should eq(@property_list)
    end

    it "none of them are similar" do
      unavailable = Property.new('unavailable', 6, 12.324, 21.2134)
      actual = @recommendation_helper.get_similar_properties(unavailable)
      actual.should eq([])
    end

    it "some of them are similar" do
      unavailable = Property.new('unavailable', 3, 12.324, 21.2134)
      actual = @recommendation_helper.get_similar_properties(unavailable)
      actual.should eq([@property4, @property5])
    end

  end
end
