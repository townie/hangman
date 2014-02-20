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
  guess.downcase
end

def rand_word
  #returns a word a random
  words = %w(time person year way day thing man world life hand part child eye woman place work week case point government company number group problem fact)
  words.shuffle.pop
end

def is_in?(word_to_guess, guess)

  word_to_guess.include?(guess[0])
end

def print_correct_letters(correct_guess)
  print "Word: " + correct_guess.join + " \n "
end

def update_correct_guess(correct_guess, guess, word_to_guess)
  if guess.split(//) == word_to_guess
    return word_to_guess
  end

  word_to_guess.each_with_index do |letter, position|
    if letter == guess
      correct_guess[position] = guess
    end
  end
  correct_guess
end

def hangman(number_of_chances = 8)
  word_to_guess = rand_word.split(//)
  unsolved = true
  correct_guess = Array.new(word_to_guess.length) { |i| i= ' _ ' }

  #debugging area
  print word_to_guess


    #show_progress(word_to_guess, current_letters, guessed_letters)
    while number_of_chances > 0 && unsolved
      print_correct_letters( correct_guess)
      guess = make_guess

      if is_in?(word_to_guess, guess)
        correct_guess = update_correct_guess(correct_guess, guess, word_to_guess)
        if guess == word_to_guess.join || correct_guess == word_to_guess
          puts "Congratulations, you've guessed the word!"
          unsolved = false
        end

      end

    end

end

hangman
