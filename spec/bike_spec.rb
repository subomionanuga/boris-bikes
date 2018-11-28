require 'bike'

describe Bike do
  it "The bike class to respond to the method working?" do
    expect(Bike.new).to respond_to(:working)
  end
end
