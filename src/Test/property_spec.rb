require File.expand_path('../../property', __FILE__)

describe Property do 

  it "creates a new property" do
    name = 'Sizable house'
    bedroom_count = 2
    latitude = 51.501000
    longitude = -0.142000
    property = Property.new(name, bedroom_count, latitude, longitude)

    property.name.should eq(name)
    property.bedroom_count.should eq(bedroom_count)
    property.latitude.should eq(latitude)
    property.longitude.should eq(longitude)
  end

  context "returns the distance from a given point" do

    it "on equator" do
      origin = Property.new('origin', 1, 0, 3)
      actual = origin.get_distance(0, 2)
      actual.should be_within(1).of(111)

      actual = origin.get_distance(0, 1)
      actual.should be_within(1).of(222)

      actual = origin.get_distance(0, -1)
      actual.should be_within(1).of(444)
    end

    it "on latitude 40 degree " do
      origin = Property.new('origin', 1, 40, 2)
      actual = origin.get_distance(40, 3)
      actual.should be_within(1).of(85)

      actual = origin.get_distance(40, -1)
      actual.should be_within(1).of(255)
    end

  end
end
