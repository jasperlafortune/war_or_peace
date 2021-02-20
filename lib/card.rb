# #########################
# class: Card
# holds a single card, e.g. "Ace of spades"
# ########################
class Card
  attr_accessor :suit, :value, :rank

  def initialize(suit, value, rank)
    # Suits: hearts, diamonds, spades, clubs
    # Expected type: symbol
    self.suit = suit
    # Values: 2 - 10, jack, queen, king, ace
    # Expected type: String
    self.value = value
    # Rank: the precedence of the card for winning, e.g. 9 beats 5
    # Expected type: integer
    self.rank = rank
  end
end
