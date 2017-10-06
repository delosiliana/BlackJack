class Deck
  attr_accessor :cards, :deck

  def initialize
    @cards = Deck.build_deck
  end

  def self.build_deck
    @cards = []
    Card::SUITS.each do |suit|
      Card::RANKS.each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
    @cards.shuffle!
  end

  def remained
    @cards.length
  end

  def reach
    @cards.shift
  end

  def shuffle_cards
    @cards.shuffle!
  end
end
