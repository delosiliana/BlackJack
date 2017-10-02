require_relative 'hand.rb'
require_relative 'deck.rb'
require_relative 'card.rb'

Class Main
  attr_reader :deck, :hand, :card

  def initialize
    @hand = Hand.new
    @deck = Deck.new
  end
end

#loop do
#  puts 'Введите Ваше имя:'
#  name = gets.chomp
#  puts 'Вы не ввели имя' if name.strip.empty?
#end

hand = Hand.new
hand.deal
p hand.count_values
