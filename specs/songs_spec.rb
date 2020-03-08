require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../song")

class SongTest < MiniTest::Test

def setup
  @song1 = Song.new("Comfortably Numb", "Pink Floyd", 12, "Prog Rock")
end

def test_has_name()
  assert_equal("Comfortably Numb", @song1.name)
end

def test_has_artist()
  assert_equal("Pink Floyd", @song1.artist)
end

def test_has_length()
  assert_equal(12, @song1.length)
end

def test_has_genre()
  assert_equal("Prog Rock", @song1.genre)
end

end
