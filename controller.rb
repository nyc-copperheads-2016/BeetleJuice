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
    greeting
    run
  end

  def greeting
    view.welcome
    view.print_rules
    view.ask_for_deck
    deck.fill_deack(view.get_user_input)
  end

  def run
    deck.initial_size.times do
      view.print_question(current_card.question)
      view.print_answer(current_card.answer)
      correct_recurse(card.check?(view.get_user_input))
      player.strikes=0
      view.print_score(player.score,deck.initial.size)
      current_card=deck.grab_card
    end
  end



  def correct_recurse(input_from_card)
    if input_from_card
      player.score+=1
      return view.print_correct
    elsif player.strikes >2
      view.print_strikes(player.strikes)
      return view.print_answer(current_card.answer)
    else
      player.striker +=1
      view.print_strikes(player.strikes)
      correct_recurse(get_user_input)
    end
  end

  def play_agin?
    view.play_again
    if view.get_input == "yes"
      initialize
    else
      view.game_over
  end

end