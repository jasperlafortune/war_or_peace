require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'

# Unit Tests for the Card class

class DeckTest < Minitest::Test

  # Helper function to create a deck of 4 cards
  # The Defulat Deck (TM):
  # - Queen of diamonds
  # - Ace of spades
  # - 8 of clubs
  # - 3 of hearts
  def build_basic_deck
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, 'Ace', 14)
    card3 = Card.new(:club, '8', 8)
    card4 = Card.new(:heart, '3', 3)

    cards = [card1, card2, card3, card4]

    deck = Deck.new(cards)

    return deck
  end

  # Unit Test: test_it_exists
  # Method: Deck.new()
  def test_it_exists
    # Attempt to create a deck of cards
    deck = self.build_basic_deck
    # Check if we succeeded
    assert_instance_of Deck, deck
  end

  # Unit Test: test_it_has_readable_attributes
  # Method: attr_readers
  def test_it_has_readable_attributes
    # Create the default deck
    deck = self.build_basic_deck
    # Check that we can read its cards
    assert deck.cards != nil
  end

  # Unit Test: test_rank_of_card_at
  # Method: rank_of_card_at
  def test_rank_of_card_at
    # Build the Default Deck (TM)
    deck = self.build_basic_deck
    # Check that the first (0th) card is ranked 12 (Queen)
    assert_equal deck.rank_of_card_at(0), 12
    # Check that the 3rd card is ranked 8
    assert_equal deck.rank_of_card_at(2), 8
  end

  # Unit Test: test_high_ranking_cards
  # Method: high_ranking_cards
  def test_high_ranking_cards
    # Get the high ranking cards from the Default Deck
    deck = self.build_basic_deck.high_ranking_cards
    # Check that there are two cards in there
    assert_equal deck.length, 2
  end

  # Unit Test: test_percent_high_ranking
  # Method: percent_high_ranking
  def test_percent_high_ranking
    # Build the Default Deck
    deck = self.build_basic_deck
    # Check that it's 50% high-ranking
    assert_equal deck.percent_high_ranking, 50
  end

  # Unit Test: test_remove_card
  # Method: remove_card
  def test_remove_card
    # Build the Default Deck
    deck =self.build_basic_deck
    # Remove the top card, store it in card
    card = deck.remove_card
    # Check that we removed the right one
    assert_equal card.suit, :diamond
    # Check that it's no longer in the deck
    assert_equal deck.cards.length, 3
  end

  # Unit Test: test_add_card
  # Method: add_card
  def test_add_card
    #  Build the Default Deck
    deck = self.build_basic_deck
    # Create the 6 of spades and add it to the deck
    card = Card.new(:spade, '6', 6)
    deck.add_card(card)
    # Check that we added the correct card
    assert_equal 5, deck.cards.length
    assert_equal card, deck.cards.last
    assert_equal 6, deck.cards.last.rank
  end

end
