require("minitest/autorun")
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("80s", [])
    @room2 = Room.new("70s", [])
    @room3 = Room.new("60s", [])
    @room4 = Room.new("00s", [])
    @guest1 = Guest.new("Helen")
    @guest2 = Guest.new("Nick")
    @guest3 = Guest.new("Cat")
    @guest4 = Guest.new("Michael")
    @song1 = Song.new("Hello", "Adele")
    @song2 = Song.new("Why is it so hard?", "Charles Bradley")
    @song3 = Song.new("Acceptable in the 80s", "Calvin Harris")
    @song4 = Song.new("Blah", "Whiskey Town")
  end

  def test_room_has_name
    assert_equal("80s", @room1.name())
  end

  def test_room_starts_empty()
  assert_equal(0, @room2.occupied_length())
  end

  def test_add_guest_to_room
    @room2.add_guest_to_room(@guest2)
    assert_equal(1, @room2.occupied_length())
  end

  def test_remove_guest_from_room
    @room3.add_guest_to_room(@guest3)
    @room3.add_guest_to_room(@guest2)
    @room3.remove_guest_from_room(@guest2)
    assert_equal(1, @room3.occupied_length())
  end

end
