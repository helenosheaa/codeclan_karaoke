class Room

  attr_reader :name, :occupied, :songs, :till, :price

  def initialize(name, occupied, songs, till, price)
    @name = name
    @occupied = []
    @songs = []
    @price = 15
    @till = []
  end

  def occupied_length()
    return @occupied.length()
  end

  def add_guest_to_room(guest)
      @occupied.push(guest)
  end

  def remove_guest_from_room(guest)
    index = @occupied.index(guest)
    @occupied.slice!(index, 1)
  end

  def songs_length()
    return @songs.length()
  end

  def add_song_to_room(song)
      @songs.push(song)
  end

  # def till_empty()
  #   return @till.length()
  # end
  #
  # def collect_entrance_fee
  #   @till.push(@price)
  # end

end
