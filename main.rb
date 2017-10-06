require_relative 'hand.rb'
require_relative 'user.rb'
require_relative 'deck.rb'
require_relative 'card.rb'

class Main
  attr_accessor :cards, :deck, :hand, :user, :coin

  def initialize
    puts "Введите свое имя:"
    name = gets.chomp.capitalize    
    @player = User.new(name)
    @dealer = User.new('Dealer')
    @bank = 0
    @deck = Deck.new
    start_game
  end

  def start_game
    2.times{ add_card(@player) }
    2.times{ add_card(@dealer) }
    @player.rate
    @dealer.rate
    puts "Здраствуйте #{@name} у вас на руках карты #{@player.hand[0].rank}#{@player.hand[0].suit} #{@player.hand[1].rank}#{@player.hand[1].suit} у вас осталось #{@player.coin}$ сумма карт #{summa(@player)} "
    puts "#{see_dealer} и осталось #{@dealer.coin}$"
    menu
  end

  def menu
    puts "Что вы желаете сделать?:"
    puts "1- Взять одну карту  2- Пропустить ход  3- Открыться  "
    input = gets.to_i
    case input
      when 1 then player_give
      when 2 then dealer_give
      when 3 then show_card_player
      when 0 then exit
    end
  end

  def summa(user)
    user.count_values
  end

  def add_card(user)
    user.deal
  end

  def see_card
    @player.show_card
  end

  def see_dealer
    "У дилера #{@dealer.show_dealer} карты"
  end

end
