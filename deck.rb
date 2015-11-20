class Deck
  attr_reader :deck,:initail_size
  def initialize
    @deck=[]
    @initial_size=deck.size
  end

  def fill_deck(input)
    Parser.get_csv(input)
  end

  def grab_card
    deck.unshift
  end

end