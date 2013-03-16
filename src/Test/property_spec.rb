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
end
