class User
  attr_reader :hand

  def initialize(name)
    @name = name
    @coin = 100
    @hand = Hand.new
  end

  def rate
    @coin -= 10
  end

  def winnings
    @coin += 20
  end

  def zero?
    @coin.zero?
  end
end
