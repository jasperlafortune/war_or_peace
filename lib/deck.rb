require './lib/card'

# #########################
# class: Deck
# holds a deck of Card objects
# ########################
class Deck
  # Cards are read only
  attr_reader :cards

  # Method: initialize
  # Takes an array of cards and store them in the cards attribute
  # - cards: an array of cards
  # returns: nil
  def initialize(cards)
    # cards: the cards in this players deck
    # Expected type Array<Card>
    @cards = cards
  end

  # Method: rank_of_card_at
  #  Returns the rank of the card at a given position in the deck
  # - index: the position of the card
  # returns: the rank of the given card
  def rank_of_card_at(index)
    return @cards[index].rank
  end

  # Method: high_ranking_cards
  # Returns an array of the cards in the deck ranking at least 11
  def high_ranking_cards
    return @cards.select { |card| card.rank >= 11 }
  end

  # Method: percent_high_ranking
  # Determine the percent of the deck that ranks above 11
  # returns: the percentage of high ranking cards as a float (0 to 100)
  def percent_high_ranking
    return (self.high_ranking_cards.length.to_f / @cards.length.to_f) * 100
  end

  # Method: remove_card
  # Removes the top (first) card from the deck
  # returns: the first card
  def remove_card
    return @cards.delete_at(0)
  end

  # Method: add_card  
  # Adds a card to the deck
  # - card: the card to be added
  # returns: nil
  def add_card(card)
    @cards.append(card)
  end

end
