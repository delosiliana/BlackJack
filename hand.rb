class Hand
  attr_accessor :hand, :value, :rank, :cards

  def initialize
    @hand = []
    @cards = Deck.new
  end

  def deal
    2.times { @hand << @cards.reach }
  end

  def count_values
    @count = 0
    hand.each do |card|
      @count += card.value.to_i
      @count += 10 if @card.value == 1 && @count + 10 <= 21
    end
    @count
  end
end
