#game class 
class WordGuessingGame 
  attr_reader :word, :word_letters, :chances, :count, :guessed, :is_over, :letter_guessed
  
  
  def initialize(word)
  	puts "Initializing new game..."
    @word = word
    @word_letters = word.split("")
    @count = 0 
    @chances = word.length 
    @guessed = Array.new(word.length, "_")
    @is_over = false 
    @letter_guessed = letter_guessed
  end #initialize 
  
#Guess a letter in the secret word, check if its in the correct format
#if inputted letter is not in string form or contains more than one letter
#prompt user to try again
#if letter has already been guessed, prompt user to try again 
  def guess_format_checker(letter_guessed) 
    if letter_guessed.class.to_s != "String" or letter_guessed.length !=1 
      puts "Guess must be a single letter! Try again."
      @guess_format_checker = false 
    elsif @guessed.include? letter_guessed
      puts "Letter \"#{letter_guessed}\ guessed already! Try again."
      @guess_format_checker = false
    else
    	@guess_format_checker = true 
    end #if 
    
  end #guess_format_checker
  
#If input is in the right format, check that letter with the word
#if letter is in the word, tell user they did a good job
#if not, tell them to guess again
  def guess(letter_guessed)
    if word_letters.include?(letter_guessed) 
      @word_letters.each_with_index do |letter, index|
        if word_letters[index] == letter_guessed 
          @guessed[index] = letter_guessed
        end #if
      end #do 
      return "Good guess. Keep going!"
    else  
      @count +=1 
      return "Bad Guess. Try again" 
    end #if word_letters.include?   
  end #def guess(letter_guessed)

#define method for checking if game is over
	def check_if_game_over 
		p @guessed 
    guesses = @chances - @count
		if !@guessed.include?('_')
			@is_over = true
			puts "You got it correct! Game over!"
		elsif guesses < 1
			@is_over = true 
			 puts "You ran out of guesses! GAME OVER!!"
		elsif @guessed == @word_letters
      puts "You got it correct! Game over!"
      @is_over = true 
    end #if
		if @is_over == false
      puts "Player 2: You have #{guesses} guesses left, enter a letter from a to z to guess the word"
	  end #if @is_over==false
    @is_over
  end #check_if_game_over 
end #class

#User interface

puts "Welcome to the Guessing game!"
puts "Player 1, input your word to guess:"

word = gets.chomp.downcase 
game = WordGuessingGame.new(word)

#Test
#game =WordGuessingGame.new("hello")
#game.guess('h')
#game.guess('e')
#game.guess('l')
#game.guess('o')
#p game.check_if_game_over


Driver code 
until game.is_over == true
	p game.guessed
	puts "Player 2, input your guess:"
    letter_guessed = gets.chomp.downcase
    until game.guess_format_checker(letter_guessed) == true
    	letter_guessed = gets.chomp.downcase
    end
    game.guess(letter_guessed)
    game.check_if_game_over
end #until

puts "Thank you for playing!"