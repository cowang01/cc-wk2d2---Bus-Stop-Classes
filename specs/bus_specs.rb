# Step 1
#
# Create a Bus class.
# The Bus should have a route number (e.g. 22) and a destination (e.g. "Ocean Terminal").
# The Bus should have a drive method that returns a string (e.g. "Brum brum").


require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop.rb')


class BusTest < MiniTest::Test

  def setup
    @bus_a = Bus.new(22, "Ocean Terminal")
    @passenger1 = Person.new("James", 45)
    @bus_stop_test = BusStop.new("Barrington")
  end



  def test_destination_bus
    assert_equal("Ocean Terminal", @bus_a.destination)
  end

  def test_drive_bus
    assert_equal("Brum, brum", @bus_a.drive_bus)
  end

  def test_passengers_on_bus
    assert_equal(0, @bus_a.return_bus_passengers())
  end

  def test_add_person_to_bus
    @bus_a.add_person_to_bus(@passenger1)
    assert_equal(1, @bus_a.return_bus_passengers())
  end

  def test_drop_off_passenger
    @bus_a.add_person_to_bus(@passenger1)
    @bus_a.drop_off_passenger(@passenger1)
    assert_equal(0, @bus_a.return_bus_passengers)
  end

  def test_drop_off_all_passengers
    @bus_a.add_person_to_bus(@passenger1)
    @bus_a.add_person_to_bus(@passenger1)
    @bus_a.add_person_to_bus(@passenger1)
    @bus_a.drop_off_all_passengers()
    assert_equal(0, @bus_a.return_bus_passengers)
  end


  def test_pick_up_all
    @bus_stop_test.add_person_to_queue(@passenger1)
    @bus_stop_test.add_person_to_queue(@passenger1)
    @bus_stop_test.add_person_to_queue(@passenger1)
    @bus_a.pick_up_all(@bus_stop_test)
    assert_equal(3, @bus_a.return_bus_passengers)
  end

end
