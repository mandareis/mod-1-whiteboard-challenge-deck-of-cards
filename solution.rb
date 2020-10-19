require "pry"

class Deck
  attr_reader :cards

  def initialize
    @cards = []
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

    suits.each do |suit|
      ranks.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    idx = rand(@cards.length)
    picked_card = @cards[idx]
    @cards = @cards.select { |card| card != picked_card }
    picked_card
  end
end

class Card
  attr_accessor :suit, :rank

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end
end
