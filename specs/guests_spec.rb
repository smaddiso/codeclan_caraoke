require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guest")

class GuestTest < MiniTest::Test

def setup
  @guest1 = Guest.new("Bob Smith")
end

def test_has_name()
  assert_equal("Bob", @guest1.name)
end

end
