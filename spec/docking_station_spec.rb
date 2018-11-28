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
    # expect(bike).to be_working
    expect(bike).to respond_to(:working)
  end

  it "The docking station object should have a counter that increases when the dock method is called" do
    station = DockingStation.new
    bike = station.release_bike
    station.dock(bike)
    expect(station.current_bikes).to be(1)
  end

end
