require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

# Unit Tests for the Card class
class CardTest < Minitest::Test

  # Unit Test: test_it_exists
  # Method: Card.new
  def test_it_exists
    # Attempt to create the Queen of Diamonds
    card = Card.new(:diamond, 'Queen', 12)
    # Check if we created a Card object
    assert_instance_of Card, card
  end

  # Unit Test: test_it_has_readable_attributes
  # Method: attr_readers
  def test_it_has_readable_attributes
    # create the queen of diamonds
    card = Card.new(:diamond, 'Queen', 12)
    # Check that the card's attributes are readable and correct
    assert_equal :diamond, card.suit
    assert_equal 'Queen', card.value
    assert_equal 12, card.rank
  end
end
