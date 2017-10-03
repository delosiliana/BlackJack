require_relative 'hand.rb'
require_relative 'user.rb'
require_relative 'deck.rb'
require_relative 'card.rb'

class Main
  attr_accessor :cards, :deck, :hand, :user

  def initialize
    puts "Введите свое имя:"
    @name = gets.chomp.capitalize
  end

  def start_game
    @player = User.new(@name)
    @dealer = User.new('Dealer')
    @bank = 0
    @deck = Deck.new
    puts "Здраствуйте #{@name}"
    menu 
  end

  def menu
    puts "Что вы желаете сделать?:"
    puts "1- Взять одну карту  2- Пропустить ход  3- Открыться  "
    input = gets.to_i
    case input
      when 1 then 
      when 2 then 
      when 3 then 
      when 0 then exit
    end
  end
end
