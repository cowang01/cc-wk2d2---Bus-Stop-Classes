

# # Give the Bus class a new property, 'passengers'. This should be an array, which starts off empty.
# Add a method to the Bus class which returns how many passengers are on the bus.

# Add a method to the Bus class which takes in a Person and adds it to the array of passengers. The method could look something like bus.pick_up(passenger1)

# Add a method that drops off a passenger and removes them from the array. This could look like bus.drop_off(passenger2)

class Bus

  attr_reader :route, :destination

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end



  def drive_bus()
    return 'Brum, brum'
  end

  def return_bus_passengers()
    return @passengers.size()
  end

  def add_person_to_bus(person)
    @passengers << person
  end

  def drop_off_passenger(name)
    for passenger in @passengers
      if passenger == name
        @passengers.delete(name)
      end
    end
  end

  def drop_off_all_passengers()
    @passengers = []
  end


end
