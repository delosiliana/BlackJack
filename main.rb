require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'card.rb'


#loop do
#  puts 'Введите Ваше имя:'
#  name = gets.chomp
#  puts 'Вы не ввели имя' if name.strip.empty?
#end

card = Card.new('K', '♥')
p card
p card.to_s
