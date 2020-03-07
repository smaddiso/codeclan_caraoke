require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guests")

class TestGuests < MiniTest::Test

def setup
  @guest1 = Guests.new("Bob", 25, 100)
  @guest2 = Guests.new("Dave", 30, 50)

  @guests = [@guest1, @guest2]
end

def test_has_name()
  assert_equal("Bob", @guest1.name)
end

def test_has_age()
  assert_equal(25, @guest1.age)
end

def test_has_money()
  assert_equal(100, @guest1.money)
end

end
