class Card

  attr_reader :question,:answer
  def initialize(args={})
    @question=args.fetch(:question,'N/A')
    @answer=args.fetch(:answer,'N/A')
  end


  def check?(input)
    input == answer
  end

end