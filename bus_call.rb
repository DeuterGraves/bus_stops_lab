require_relative('./bus.rb')
require_relative('./person.rb')
#require_relative('./band.rb')

passenger2 = Person.new("Taylor", 31)
passenger3 = Person.new("Ed", 26)
# @passenger1 = Person.new("Sylvia", 22)

passenger1 = Person.new("Sylvia", 22)
bus_four = Bus.new("4", "Jewel")

# bus_four.passengers() << passenger3
# bus_four.passengers() << passenger2
bus_four.passengers.push(passenger3, passenger2)

p bus_four.passengers.length()
p bus_four.picks_up_passenger(passenger1)
p bus_four.passengers.length()
#p passenger_count
