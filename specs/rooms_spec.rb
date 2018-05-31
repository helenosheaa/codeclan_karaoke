require("minitest/autorun")
require_relative("../rooms")

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("80s")
  end

  def test_room_has_name
    assert_equal("80s", @room1.name())
  end

end
