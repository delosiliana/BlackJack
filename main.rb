require_relative 'hand.rb'
require_relative 'deck.rb'
require_relative 'card.rb'


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
