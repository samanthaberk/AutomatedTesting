
# deck.rb

require_relative 'card'

class Deck
  attr_accessor :card_list

  def initialize
    @card_list = []
    13.times do |value|
      @card_list << Card.new(value + 1, :hearts)
      @card_list << Card.new(value + 1, :spades)
      @card_list << Card.new(value + 1, :diamonds)
      @card_list << Card.new(value + 1, :clubs)
    end
  end
end

def draw(num)
  @card_list.sample(num)
end

def shuffle
  # shuffles the deck
end

new_deck = Deck.new
