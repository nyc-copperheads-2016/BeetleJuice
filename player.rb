class Player
  attr_reader :score
  attr_accessor :strikes
  def initialize
    @score = 0
    @strikes = 0
  end
end