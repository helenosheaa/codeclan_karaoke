require("minitest/autorun")
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("Funk", [], [], 15, 0)
    @room2 = Room.new("Soul", [], [], 15, 0)
    @room3 = Room.new("Rap", [], [], 15, 0)
    @room4 = Room.new("Old School", [], [], 15, 0)
    @guest1 = Guest.new("Helen", 20, "Coming Home")
    @guest2 = Guest.new("Nick", 55, "Why is it so hard?")
    @guest3 = Guest.new("Cat", 33, "Acceptable in the 80s")
    @guest4 = Guest.new("Michael", 25, "Don't Wanna Know Why")
    @song1 = Song.new("Coming Home", "Leon Bridges")
    @song2 = Song.new("Why is it so hard?", "Charles Bradley")
    @song3 = Song.new("Acceptable in the 80s", "Calvin Harris")
    @song4 = Song.new("Don't Wanna Know Why", "Whiskeytown")
  end

  def test_room_has_name
    assert_equal("Funk", @room1.name())
  end

  def test_room_starts_empty()
  assert_equal(0, @room2.guest_count.count())
  end

  def test_check_in_guest_to_room
    @room2.check_in_guest_to_room(@guest2)
    assert_equal(1, @room2.guest_count.count())
  end

  def test_check_out_guest_from_room
    @room3.check_in_guest_to_room(@guest3)
    @room3.check_in_guest_to_room(@guest2)
    @room3.check_out_guest_from_room(@guest2)
    assert_equal(1, @room3.guest_count.count())
  end

  def test_room_has_no_songs()
  assert_equal(0, @room2.songs.count())
  end

  def test_add_song_to_room_playlist
    @room4.add_song_to_room_playlist(@song2)
    assert_equal(1, @room4.songs.count())
  end

  def test_room_has_price
    assert_equal(15, @room2.price())
  end

  def test_till_starts_empty
    assert_equal(0, @room2.till())
  end

  def test_num_guests_in_room
    @room1.check_in_guest_to_room(@guest4)
    @room1.check_in_guest_to_room(@guest1)
    assert_equal(2, @room1.guest_count.count())
  end

  def test_room_takes_entry_fee
    @room2.room_takes_entry(@room2)
    assert_equal(15, @room2.till())
  end

  def test_room_takes_entry_fee_from_guest
    @room2.room_takes_entry(@room2)
    @guest3.pay_entrance(@room2)
    assert_equal(18, @guest3.wallet())
    assert_equal(15, @room2.till())
  end

  def test_occupied?
    @room1.check_in_guest_to_room(@guest4)
    @room1.check_in_guest_to_room(@guest3)
    @room1.check_in_guest_to_room(@guest2)
    @room1.check_in_guest_to_room(@guest1)
    assert_equal(true, @room1.occupied?())
  end

  def test_if_occupied_refuse_entry
    @room1.check_in_guest_to_room(@guest4)
    @room1.check_in_guest_to_room(@guest3)
    @room1.check_in_guest_to_room(@guest2)
    @room1.check_in_guest_to_room(@guest1)
    @room1.check_in_guest_to_room(@guest1)
    assert_equal(true, @room1.occupied?())
  end

end
