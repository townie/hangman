#!/usr/bin/env ruby
def make_guess
  #returns a guess that is one charater long OR compares against the whole word
end

def rand_word
  #returns a word a random
end

def show_progess(word_to_guess, current_letters, guessed_letters)
  #puts out the current letters and how they match up with the current word
end




def hangman
  word_to_guess = rand_word
  loop
    show_progress(word_to_guess, current_letters, guessed_letters)
    guess = make_guess
    if word_to_guess.include?(guess)

    else
    chances -= 1
    end
  end



end

hangman
