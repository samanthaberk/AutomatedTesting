require "awesome_print"
require "pry"
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    # Assign value to face/numbered
    case value
    when 11
      @value = "Jack"
    when 12
      @value = "Queen"
    when 13
      @value = "King"
    when 1
      @value = "Ace"
    else
      @value = value
    end

    # Assign suit to card
    @suit = suit

    # Notify user if the card is invalid
    raise ArgumentError.new("The value of a card must be between 1 and 13.") unless value > 0 && value < 14
    raise ArgumentError.new("The suit of a card must be hearts, spades, clubs, or diamonds.") unless @suit == :hearts || @suit == :spades || @suit == :diamonds || @suit == :clubs
  end

  def to_s
    return "#{@value} of #{@suit.to_s}"
  end

  def value
    return @value
  end

  def suit
    return @suit.to_s
  end
end
