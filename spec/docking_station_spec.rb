require 'docking_station'

describe DockingStation do
  it "The docking station method to respond to the release bike method" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

end
