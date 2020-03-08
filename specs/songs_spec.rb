require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../song")

class SongTest < MiniTest::Test

def setup
  @song1 = Song.new("Comfortably Numb")
end

def test_has_name()
  assert_equal("Comfortably Numb", @song1.name)
end

end
