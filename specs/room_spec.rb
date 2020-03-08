require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../room")
require_relative("../guest")
require_relative("../song")

class RoomTest < MiniTest::Test

def setup
  @room1 = Room.new("Bar", "Standing Only", 75)
  @guest1 = Guest.new("Bob Smith", 34, 40)
  @guest2 = Guest.new("Jim Bloggs", 18, 55)
  @song1 = Song.new("Comfortably Numb", "Pink Floyd", 12, "Prog Rock")

  # @guests = [@guest1, @guest2]
  # @songs = [@song1, @songs2]
  # @rooms = [@room1, @room2]

  # @karaoke_bar = Room.new("CodeClan Caraoke", @rooms, @guests, @songs, 1000)
end

def test_has_name()
  assert_equal("Bar", @room1.name)
end

def test_has_type()
  assert_equal("Standing Only", @room1.type)
end

def test_has_capacity()
  assert_equal(75, @room1.capacity)
end

def test_guest_list_starts_empty()
  assert_equal(0, @room1.guest_list_length())
end

def test_song_list_starts_empty()
  assert_equal(0, @room1.song_list_length())
end

def test_add_guest_to_guest_list()
  @room1.add_to_guest_list(@guest1)
  assert_equal(1, @room1.guest_list_length())
end

def test_add_new_guest_to_guest_list()
  @guest3 = Guest.new("Dave Jones", 40, 20)
  @room1.add_to_guest_list(@guest3)
  assert_equal(1, @room1.guest_list_length())
end

# def test_remove_guest_from_guest_list()
#   @guest3 = Guest.new("Dave Jones", 40, 20)
#   @guest4 = Guest.new("Donald Duck", 50, 35)
#   @room1.remove_from_guest_list(@guest4)
#   assert_equal(1, @room1.guest_list_length())
# end

def test_add_song_to_song_list()
  @room1.add_to_song_list(@song1)
  assert_equal(1, @room1.song_list_length())
end

def test_add_new_song_to_song_list()
  @song2 = Song.new("Sledgehammer", "Meat Loaf", 10, "Rock")
  @room1.add_to_song_list(@song2)
  assert_equal(1, @room1.song_list_length())
end

end
