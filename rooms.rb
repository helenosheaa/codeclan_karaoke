class Room

  attr_reader :name, :guest_count, :songs, :price, :till

  def initialize(name, guest_count, songs, price, till)
    @name = name
    @guest_count = []
    @songs = []
    @price = 15
    @till = 0
  end

  def check_in_guest_to_room(guest)
      @guest_count.push(guest)
  end

  def check_out_guest_from_room(guest)
    index = @guest_count.index(guest)
    @guest_count.slice!(index, 1)
  end

  def add_song_to_room(song)
      @songs.push(song)
  end

  def till_empty()
    return @till
  end

  def num_guests_in_room
    return @guest_count.length()
  end

  def room_has_price
    return room.price
  end

  def room_takes_entry(price)
    @till += @price
  end

  def room_takes_entry_from_guest(price, guest)
    guest.pay_entrance(price)
    @till += room.price()
  end

  def occupied?
  @guest_count.length >= 4
  end

  def occupied_refused_entry
    @guest_count << guest if !occupied?
  end

end
