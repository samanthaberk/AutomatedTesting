require "awesome_print"
require "pry"
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
    raise ArgumentError.new("The value of a card must be between 1 and 13.") unless @value > 0 && @value < 14
    raise ArgumentError.new("The suit of a card must be hearts, spades, clubs, or diamonds.") unless @suit == :hearts || @suit == :spades || @suit == :diamonds || @suit == :clubs
  end

  def to_s
    case value
    when 2, 3, 4, 5, 6, 7, 8, 9, 10
      return "#{value} of #{suit.to_s}"
    when 11
      return "Jack of #{suit.to_s}"
    when 12
      return "Queen of #{suit.to_s}"
    when 13
      return "King of #{suit.to_s}"
    when 1
      return "Ace of #{suit.to_s}"
    end
  end

end
