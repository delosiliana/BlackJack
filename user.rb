class User
  attr_reader :hand

  def initialize(name)
    @name = name
    @coin = 100
    @hand = Hand.new
  end
end
