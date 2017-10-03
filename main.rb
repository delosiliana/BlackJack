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
  end
end
