require_relative 'pathhelper'
class Controller

  attr_reader :view, :parser, :deck, :player
  attr_accessor :current_card
  def initialize
    @view=View.new
    @deck=Deck.new
    @card=Card.new
    @player=Player.new
    @current_card=deck.grab_card
    run
  end

  def run
    view.welcome
    view.print_rules
    view.ask_for_deck
    deck.fill_deack(view.get_user_input)
    view.print_question(current_card.question)
    view.print_answer(current_card.answer)
    correct_check(card.check?(view.get_user_input))
  end

  def correct_check(input)
    !input ? view.print_strikes(player.strikes) : view.print_correct
  end

end