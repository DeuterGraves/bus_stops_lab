require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")

class BusTest < MiniTest::Test

  def setup()
    @passenger2 = Person.new("Taylor", 31)
    @passenger3 = Person.new("Ed", 26)
    @passenger1 = Person.new("Sylvia", 22)
    @bus_four = Bus.new("4", "Jewel")

    @bus_four.passengers.push(@passenger3, @passenger2)

  end

  def test_bus_has_route_number()
    bus = @bus_four
    assert_equal("4", bus.route_number())
  end

  def test_bus_has_destination()
    bus = @bus_four
    assert_equal("Jewel", bus.destination())
  end

  def test_bus_drives()
    bus = @bus_four
    assert_equal("My wheels go round and round!", bus.drive())
  end

  def test_bus_starts_with_two_passengers()
    bus =  @bus_four
    assert_equal(2, bus.passengers.length())
  end

  def test_bus_passenger_count()
    bus = @bus_four
    assert_equal(2, bus.passenger_count())
  end

  def test_bus_picks_up_passenger()
     @bus_four.picks_up_passenger(@passenger1)
    assert_equal(3, @bus_four.passenger_count())
  end

  def test_drops_off_passenger()
     @bus_four.drops_off_passenger(@passenger2)
    assert_equal(1, @bus_four.passenger_count())
  end

  def test_drop_off_all_passengers()
    
  end

end
