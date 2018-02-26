
require_relative 'spec_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          card.must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      proc {Card.new(0, :diamonds)}.must_raise ArgumentError
      proc {Card.new(14, :diamonds)}.must_raise ArgumentError
      proc {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      two_of_diamonds = Card.new(2, :diamonds)
      two_of_diamonds.to_s.must_be_instance_of String
      two_of_diamonds.to_s.must_equal "2 of diamonds"

      ten_of_clubs = Card.new(10, :clubs)
      ten_of_clubs.to_s.must_be_instance_of String
      ten_of_clubs.to_s.must_equal "10 of clubs"
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      queen_of_hearts = Card.new(12, :hearts)
      queen_of_hearts.to_s.must_be_instance_of String
      queen_of_hearts.to_s.must_equal "Queen of hearts"

      ace_of_spades = Card.new(1, :spades)
      ace_of_spades.to_s.must_be_instance_of String
      ace_of_spades.to_s.must_equal "Ace of spades"
    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
      two_of_diamonds = Card.new(2, :diamonds)
      two_of_diamonds.value.must_be_instance_of Integer
      two_of_diamonds.value.must_equal 2

      ace_of_spades = Card.new(1, :spades)
      ace_of_spades.value.must_be_instance_of String
      ace_of_spades.value.must_equal "Ace"
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      ten_of_clubs = Card.new(10, :clubs)
      ten_of_clubs.suit.must_be_instance_of String
      ten_of_clubs.suit.must_equal "clubs"

      queen_of_hearts = Card.new(12, :hearts)
      queen_of_hearts.suit.must_be_instance_of String
      queen_of_hearts.suit.must_equal "hearts"
    end
  end
end
