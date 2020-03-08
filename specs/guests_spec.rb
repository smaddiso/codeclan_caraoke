require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guest")

class GuestTest < MiniTest::Test

def setup
  @guest1 = Guest.new("Bob Smith", 25, 50)
end

def test_has_name()
  assert_equal("Bob Smith", @guest1.name)
end

def test_has_age()
  assert_equal(25, @guest1.age)
end

def test_has_money()
  assert_equal(50, @guest1.money)
end

end
