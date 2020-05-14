require './bike.rb'

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def dock(bikes)
    fail "No spaces to dock" if full?
    @bikes.push(bikes)
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end

  private
  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end
