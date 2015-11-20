class Deck
  attr_accessor :initial_size, :deck
  def initialize
    @deck=[]
    @initial_size=deck.size
  end

  def fill_deck(input)
    Parser.get_csv(input).each do |row|
      deck << Card.new(row)
    end
  end

  def grab_card
    self.deck.pop
  end

end