require("minitest/autorun")
require_relative("../guests")
require_relative("../rooms")
require_relative("../songs")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Helen", 20, "Coming Home")
    @guest2 = Guest.new("Nick", 55, "Why is it so hard?")
    @guest3 = Guest.new("Cat", 33, "Acceptable in the 80s")
    @guest4 = Guest.new("Michael", 12, "Don't Wanna Know Why")
    @room1 = Room.new("Funk", [], [], 15, 0)
    @room4 = Room.new("Old School", [], [], 15, 0)
    @song1 = Song.new("Coming Home", "Leon Bridges")
  end

  def test_guest_has_name
    assert_equal("Helen", @guest1.name())
  end

  def test_guest_has_wallet
    assert_equal(33, @guest3.wallet())
  end

  def test_guest_can_afford_entrance?
    assert_equal(true, @guest1.can_afford_entrance?(@room1))
  end

  def test_guest_can_pay_entrance__decreases_money
    @guest2.pay_entrance(@room4)
    assert_equal(40, @guest2.wallet())
  end

  def test_guest_can_not_pay_entrance__money_stays_same
    @guest3.pay_entrance(@room4)
    assert_equal(12, @guest4.wallet())
  end

  def test_guest_has_favorite_song
    assert_equal("Don't Wanna Know Why", @guest4.favorite_song())
  end

  def test_guests_room_has_favorite_song
    @room4.add_song_to_room(@song2)
    assert_equal("Woooo they have my favorite song Coming Home!", @guest1.room_has_favorite_song())
  end

end
