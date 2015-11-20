describe Player do

  describe '#initialize' do
    it 'Creates a new instance of the Player class' do
      expect(Player.new).to be_kind_of Player
    end
  end

  describe '#scores' do
    it 'is readable' do
      expect(Player.new.scores).to be 0
    end
  end

  describe '#strikes' do
    it 'is readable' do
      expect(Player.new.strikes).to be 0
    end
  end
end

describe Card do

    flash_card = Card.new(question: "How many licks does it take to get to the center of a Tootsie Pop?", answer: "3")

  describe '#initialize' do
    it 'Creates a new instance of the Card class' do
    expect(flash_card).to be_kind_of Card
    end
    it 'makes a reader variable for answer' do
      expect(flash_card.answer).to eq "3"
    end
    it 'makes a reader variable for question' do
      expect(flash_card.question).to eq "How many licks does it take to get to the center of a Tootsie Pop?"
    end
  end

  describe '#check?' do
    it 'returns false if the input is not the same as the correct answer' do
      expect(flash_card.check?("The world may never know")).to be false
    end
    it 'returns true if the input is the same as the correct answer' do
      expect(flash_card.check?("3")).to be true
    end
  end
end

describe Deck do

  flash_card_deck = Deck.new

  describe '#initialize' do
    it 'Creates a new instance of the deck class' do
      expect(Deck.new).to be_kind_of Deck
    end
    xit 'Creates a new reader variable of deck that returns the array of cards' do
      expect(deck.deck).to be_kind_of Array
    end
    xit 'creates an initial size of the deck for later reference' do
      expect(deck.initial_size).to be 0
    end
  end

  describe '#fill_deck' do
    xit 'fills the deck array with instances of Card' do
    end
  end

  describe '#grab_card' do
    xit 'reduces the size of the deck by 1' do
      expect(flash_card.grab_card.deck.size).to be (flash_card.initial_size - 1)
    end
    xit 'returns a card from the deck array' do
      expect(flash_card.grab_card).to be_kind_of Card
    end
  end
end