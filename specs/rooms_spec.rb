require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class TestRooms < MiniTest::Test

def setup
  @room1 = Rooms.new("Bar", "Standing", 50)
  @room2 = Rooms.new("Lounge", "Seated", 75)

  @rooms = [@room1, @room2]
end

def test_has_name()
  assert_equal("Bar", @room1.name)
end

def test_has_type()
  assert_equal("Standing", @room1.type)
end

def test_has_capacity()
  assert_equal(30, @room1.capacity)
end

end
