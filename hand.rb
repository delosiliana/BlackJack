class Hand

  def initialize
    @hand = []
    @deck = Deck.new
    @cards = []
  end

  def deal
    2.times { @hand << @deck.reach }
  end

  def count_values
    @current_hand = @hand
    @points = @current_hand.each { |card| card.value + card.value }
    puts "#{@points}"
  end
end
