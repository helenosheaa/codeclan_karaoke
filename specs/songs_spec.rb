require("minitest/autorun")
require_relative("../songs")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Coming Home", "Leon Bridges")
    @song2 = Song.new("Why is it so hard?", "Charles Bradley")
    @song3 = Song.new("Acceptable in the 80s", "Calvin Harris")
    @song4 = Song.new("Don't Wanna Know Why", "Whiskeytown")
  end

  def test_song_has_title
    assert_equal("Coming Home", @song1.title())
  end

  def test_song_has_artist
    assert_equal("Leon Bridges", @song1.artist())
  end

end
