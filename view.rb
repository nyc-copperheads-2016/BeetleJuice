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
    get_user_input
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
    puts "Your question is #{question}"
  end

  def print_answer(answer)
    puts "The correct answer is #{answer}"
  end

  def print_score(score, size)
    puts "You scored #{score} out of a total of #{size}"
  end

  def print_strikes(num_strikes)
    puts "Oops! That's strike #{num_strikes}!"
  end

  def get_user_input
    gets.chomp
  end
end