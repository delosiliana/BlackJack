class Deck

  attr_accessor :cards

  def initialize
    @cards = Deck.build_deck
  end

  def self.build_deck
    cards = []
    Card::SUITS.each do |suit|
      Card::RANKS.each do |rank|
        cards << Card.new(rank, suit)
      end
    end
    cards.shuffle
  end
end
