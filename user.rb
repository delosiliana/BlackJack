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

  def reset_cards
    @cards.clear
  end
  
  def limit_cards?
    @cards.size == 3
  end
end
