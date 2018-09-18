require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")

class BusTest < MiniTest::Test

  def setup()
    #route number
    #destination
    @bus_four = Bus.new("4", "Jewel")
    # drive method that returns a string
    #passender

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




end
