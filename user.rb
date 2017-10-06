class User
  attr_accessor :hand, :cards, :coin

  def initialize(name)
    @name = name
    @coin = 100
    @cards = Deck.new
    @hand = []
  end

  def deal
    @hand << @cards.reach
  end

  def rate
    @coin -= 10
  end

  def winnings
    @coin += 20
  end

  def winn
    @coin += 10
  end

  def zero?
    @coin.zero?
  end

  def show_card
    @hand.each { |card| print "#{card} " }
  end

  def show_dealer
    @hand.size { |_card| print '*  ' }
  end

  def reset_cards
    @hand.clear
  end

  def count_values
    @count = 0
    @hand.each do |card|
      @count += card.value.to_i
      @count += 10 if card.value == 1 && @count + 10 <= 21
    end
    @count
  end
end
