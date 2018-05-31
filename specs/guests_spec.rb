require("minitest/autorun")
require_relative("../guests")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Helen")
    @guest2 = Guest.new("Nick")
    @guest3 = Guest.new("Cat")
    @guest4 = Guest.new("Michael")
  end

  def test_guest_has_name
    assert_equal("Helen", @guest1.name())
  end

end
