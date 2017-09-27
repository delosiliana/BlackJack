class Hand

  def initialize
    @player_hand = []
    @dealer_hand = []
    @deck = Deck.new
    @cards = []
  end

  def deal
    2.times { @player_hand << @deck.reach }
    2.times { @dealer_hand << @deck.reach }
  end
end
