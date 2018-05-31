class Guest

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def can_afford_entrance?(entry)
    return wallet >= entry.price()
  end

  def pay_entrance(entry)
    if can_afford_entrance?(entry)
      @wallet -= entry.price()
    end
  end

end
