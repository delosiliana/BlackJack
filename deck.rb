class Deck

attr_accessor :cards
  def initialize
    @cards = []
    Suits.each do |suit|
      Ranks.each do |rank| 
        @cards << Card.new(rank, suit)
      end
    end
  end
end
