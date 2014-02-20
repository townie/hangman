#!/usr/bin/env ruby

def make_guess
  #returns a guess that is one charater long OR compares against the whole word
  puts "Please enter your guess of a letter or the word: "
  guess = gets.chomp

  if !(/[a-zA-z]/.match(guess))
    puts "Please a enter a letter or word"
    guess = make_guess
  elsif guess.length > 1
    puts "Are you sure you want to guess #{guess} as the whole word? (y/n)"
    yesorno = gets.chomp
      if yesorno.include?('y')
        return guess
      elsif yesorno.include?('n')
        puts "Ok thats what I thought, Please enter your guess"
        guess=make_guess
      else
        puts "Well clearly you didnt follow instructions you guess will count as #{guess}"
      end
  end
  guess
end

def rand_word
  #returns a word a random
end

def show_progess(word_to_guess, current_letters, guessed_letters)
  #puts out the current letters and how they match up with the current word
end




def hangman
  # word_to_guess = rand_word
  # loop
  #   show_progress(word_to_guess, current_letters, guessed_letters)
  #   guess = make_guess
  #   if word_to_guess.include?(guess)

  #   else
  #   chances -= 1
  #   end
  # end


end
puts make_guess
# hangman
