require 'docking_station'

describe DockingStation do
  it "The docking station method to respond to the release bike method" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it "returns a Bike Object on release_bike method" do
     station = DockingStation.new
     bike = station.release_bike
     expect(bike).to be_instance_of(Bike)
  end

  it "the returned bike Object should respond to working method" do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike).to respond_to(:working)
  end
end
