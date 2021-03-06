class View

  def welcome
    puts "Welcome to Group Bettlejuice's flashcard extravaganza!"
  end

  #returns the user's choice of deck
  def ask_for_deck
    puts "What deck would you like to play with?"
    puts "We have two options currently:"
    puts "Riddles and Movies"
    puts ""
    puts "Please enter the name of the deck you would like to use!"
  end

  def print_rules
    puts "Here are the rules: "
    puts "You will be asked questions based upon the type of deck you chose..."
    puts "You will have three tries to guess the correct answer"
    puts "If you do, you will recieve a point"
    puts "If you are incorrect three times however, you will be forced to move onto the next question"
    puts "Good luck!"
  end

  def print_question(question)
    puts "\nYour question is #{question}"
  end


  def print_answer(answer)
    puts "\nThe correct answer is #{answer}"
  end

  def print_score(score, size)
    puts "\nYou scored #{score} out of a total of #{size}\n"
  end

  def print_strikes(num_strikes)
    puts "\nOops! That's strike #{num_strikes}!"
  end

  def get_user_input
    puts "\nRespond Below:"
    gets.chomp
  end

  def print_correct
    puts "\nCongrats you got it right!\nMoving on to the next question"
  end

  def play_again
    puts "Would you like to play again?\n Type yes or no"
  end

  def game_over
    puts "\n\nGame Over thanks for playing!"
  end

end