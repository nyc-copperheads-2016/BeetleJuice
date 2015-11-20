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