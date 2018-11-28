class DockingStation
  def initialize
    @current_bikes = 0
  end

  def release_bike
    return Bike.new
  end

  def dock(bike)
    @current_bikes += 1
  end

  attr_reader :current_bikes


end
