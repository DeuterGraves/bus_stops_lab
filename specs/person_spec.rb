require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")

class PersonTest < MiniTest::Test

  def setup

    @person1 = Person.new("Steve", 48)

  end

  def test_person_has_age()
    assert_equal(48, @person1.age())
  end

  def test_person_has_name()
    assert_equal("Steve", @person1.name())
  end












# class end
end
