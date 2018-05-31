require("minitest/autorun")
require_relative("../guests")
require_relative("../rooms")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Helen", 20)
    @guest2 = Guest.new("Nick", 55)
    @guest3 = Guest.new("Cat", 33)
    @guest4 = Guest.new("Michael", 25)
    @room1 = Room.new("80s", [], [], 15, 0)
    @room4 = Room.new("80s", [], [], 15, 0)
  end

  def test_guest_has_name
    assert_equal("Helen", @guest1.name())
  end

  def test_guest_has_wallet
    assert_equal(33, @guest3.wallet())
  end

  def test_can_afford_entrance?
    assert_equal(true, @guest1.can_afford_entrance?(@room1))
  end

  def test_pay_entrance__decreases_money
    @guest2.pay_entrance(@room4)
    assert_equal(40, @guest2.wallet())
  end

end
