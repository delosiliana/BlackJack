class Card

  attr_reader :rank, :suit, :value
  
  RANKS= ['2', '3', '4', '5', '6', '7', '8', '9', '10','J', 'Q', 'K', 'A'].freeze
  SUITS = ['♠', '♣','♦','♥'].freeze

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def value 
    return @rank if %w(2 3 4 5 6 7 8 9 10).include?(rank)
    return 10 if %w(J Q K).include?(rank)
    return 1 if rank == 'A'
    return @value
  end

  def to_s
    "#{rank}" "#{suit}"
  end
end
