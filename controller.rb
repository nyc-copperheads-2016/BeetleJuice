require_relative 'pathhelper'
class Controller

  attr_reader :view, :parser, :deck, :player, :card
  attr_accessor :current_card
  def initialize
    @view=View.new
    @deck=Deck.new
    @player=Player.new
    greeting
    deck.initial_size=deck.deck.size
    @current_card=deck.grab_card
    system('clear')
    run_deck
    play_again?
    system('clear')
  end

  def greeting
    view.welcome
    view.print_rules
    view.ask_for_deck
    deck.fill_deck(view.get_user_input)
  end

  def run_deck
    deck.initial_size.times do
      view.print_question(current_card.question)
      correct_recurse(current_card.check?(view.get_user_input))
      player.strikes=0
      self.current_card=deck.grab_card
      sleep(2)
      system('clear')
    end
    view.print_score(player.score,deck.initial_size)
  end



  def correct_recurse(input_from_card)
    if input_from_card
      player.score+=1
      return view.print_correct
    elsif player.strikes >1
      return view.print_answer(current_card.answer)
    else
      player.strikes +=1
      view.print_strikes(player.strikes)
      correct_recurse(current_card.check?(view.get_user_input))
    end
  end

  def play_again?
    view.play_again
    if view.get_user_input == "yes"
      initialize
    else
      view.game_over
    end
  end

end

Controller.new