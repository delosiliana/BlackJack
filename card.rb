class Card

attr_reader :rank, :suit, :value

  RANK= ['2', '3', '4', '5', '6', '7', '8', '9', '10','J', 'Q', 'K', 'A'].freeze
  SUIT = ['♠', '♣' ,'♦' ,'♥'].freeze

  def initialize(rank, suit)
    @rank = rank
    @suits = suit
    @value = value
  end

  def value #присвоение значений для счета
    return @rank if %w(2 3 4 5 6 7 8 9 10).include?(rank)
    return 10 if %w(J Q K).include?(rank)
    return 1 if rank == 'A'
  end
end
