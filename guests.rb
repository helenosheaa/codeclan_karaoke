class Guest

  attr_reader :name, :wallet, :favorite_song

  def initialize(name, wallet, favorite_song)
    @name = name
    @wallet = wallet
    @favorite_song = favorite_song
  end

  def can_afford_entrance?(entry)
    return wallet >= entry.price()
  end

  def pay_entrance(entry)
    if can_afford_entrance?(entry)
      @wallet -= entry.price()
    end
  end

  def room_has_guests_favorite_song
      if @favorite_song == room.add_song_to_room_playlist
        return "Woooo they have my favorite song #{favorite_song}!"
      end
  end

end
