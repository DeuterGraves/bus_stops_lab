class Bus

  attr_reader :route_number, :destination
  attr_accessor :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive()
    return "My wheels go round and round!"
  end

  def passenger_count()
    return @passengers.length()
  end

  def picks_up_passenger(passenger)
    @passengers << (passenger)
  end

  def drops_off_passenger(passenger_dropped)
    #this is the meat of our code
    for passenger in @passengers
      if passenger == passenger_dropped
        @passengers.delete(passenger_dropped)
      end
    end
  end

  
  #end class
end
