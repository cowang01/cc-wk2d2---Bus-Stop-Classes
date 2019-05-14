# Create a new class called BusStop. This should have a name attribute.
# Add an attribute to the BusStop called 'queue'. This should be an empty array that will get filled with instances of the Person class.
# Add a method that adds a person to the queue.
# Now imagine that our bus is travelling along the route. For now we will imagine that there is only one bus that goes on this route, so every passenger waiting at each stop wants to get on the bus.
#
# Try writing a method that the bus would call, to collect all of the passengers from a stop. This might look like bus.pick_up_from_stop(stop1). This should take all of the passengers waiting in line at the stop, and put them inside of the bus. So the stop will now have nobody in the queue, and the number of people on the bus will increase by however many people the stop had at it.



require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop.rb')


class Bus_StopTest < MiniTest::Test

  def setup
    @person_1 =  Person.new("James", 45)
    @person_2 =  Person.new("Andrew", 12)
    @person_3 =  Person.new("Simon", 24)
    @bus_stop_test = BusStop.new("Barrington")
  end



  def test_bus_stop_queue
    assert_equal(0, @bus_stop_test.queue.length)
  end

  def test_add_person_to_queue
    @bus_stop_test.add_person_to_queue(@person1)
    assert_equal(1, @bus_stop_test.queue.length)
  end



end
