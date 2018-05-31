class Room

  attr_reader :name, :occupied

  def initialize(name, occupied)
    @name = name
    @occupied = []
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

end
