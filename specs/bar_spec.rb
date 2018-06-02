require("minitest/autorun")
require_relative("../bar")

class BarTest < MiniTest::Test

  def setup
    @bar = Bar.new("CCC", 1000)
  end

  def test_bar_has_till
    assert_equal(1000, @bar.till())
  end

  def test_bar_has_name
    assert_equal("CCC", @bar.name())
  end

end
