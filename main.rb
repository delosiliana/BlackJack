require_relative 'hand.rb'
require_relative 'deck.rb'
require_relative 'card.rb'

Class Main
  attr_reader :deck, :hand, :card

  def initialize
    @hand = Hand.new
    @deck = Deck.new
  end
  
#loop do
#  puts 'Введите Ваше имя:'
#  name = gets.chomp
#  puts 'Вы не ввели имя' if name.strip.empty?
#end

card = Card.new('Q', '♣')
p card
p card.to_s
#deck = Deck.new
#p deck
hand = Hand.new
hand.deal
hand.count_values
