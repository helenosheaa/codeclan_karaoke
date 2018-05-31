require("minitest/autorun")
require_relative("../songs")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Hello", "Adele")
    @song2 = Song.new("Why is it so hard?", "Charles Bradley")
    @song3 = Song.new("Acceptable in the 80s", "Calvin Harris")
    @song4 = Song.new("Blah", "Whiskey Town")
  end

  def test_song_has_title
    assert_equal("Hello", @song1.title())
  end

  def test_song_has_artist
    assert_equal("Adele", @song1.artist())
  end

end
