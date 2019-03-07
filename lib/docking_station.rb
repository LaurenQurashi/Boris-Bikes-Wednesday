require_relative './bike.rb'

class DockingStation
  attr_reader :bike_rack, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bike_rack = []

  end

  def release_bike
    raise("No bikes!") if empty?
    bike = Bike.new
  end

  def dock_bike(bike)
    raise("Bike Rack is full!") if full?
    @bike_rack << bike
  end

  private

  def full?
    @bike_rack.length >= @capacity
  end

  def empty?
    @bike_rack.empty?
  end
end
