require_relative './bike.rb'

class DockingStation
attr_reader :bike_rack
  def initialize
    @bike_rack = []
  end

  def release_bike
    raise("No bikes!") if @bike_rack.empty?
    bike = Bike.new
  end

  def dock_bike(bike)
    raise("Bike Rack is full!") if @bike_rack.length >= 20
    @bike_rack << bike
  end

  def full?
  end

  def empty?
  end
end
