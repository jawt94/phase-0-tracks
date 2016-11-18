require_relative 'WordGuessingGame'

describe WordGuessingGame do 
	let (:wordguessinggame) { WordGuessingGame.new('hello')}

	it "creates a new game with the inputted string word as letters and stores it as an array" do 
		expect(wordguessinggame.word_letters). to eq ["h", "e", "l","l","o"]
	end 

	it "checks if the letter guessed is in the right format" do 
		expect(wordguessinggame.guess_format_checker("h")).to eq true 
		expect(wordguessinggame.guess_format_checker(1)).to eq false 

	end 

		it "sets number of chances to length of word" do
		expect(wordguessinggame.chances).to eq (5)
	end 

	it "Guessesinggame.guess should compare guesses with stored array" do 
		expect(wordguessinggame.guess('h')).to eq "Good guess. Keep going!"
		expect(wordguessinggame.guess('f')).to eq "Bad Guess. Try again"
	end 

	it "counts number of incorrect guesses" do 
		wordguessinggame.guess('f')
		expect(wordguessinggame.count).to eq (1)
	end 

	it "checks if game is over " do 
		wordguessinggame.guess('h')
		wordguessinggame.guess('e')
		wordguessinggame.guess('o')
		wordguessinggame.guess('l')
		expect(wordguessinggame.check_if_game_over).to eq true 
	end 

	it "checks if game is over when h and l are entered" do 
		wordguessinggame.guess('h')
		wordguessinggame.guess('l')
		expect(wordguessinggame.check_if_game_over).to eq false 
	end 

	it "checks if game is over when guesses <1" do 
		wordguessinggame.guess('f')
		wordguessinggame.guess('a')
		wordguessinggame.guess('c')
		wordguessinggame.guess('d')
		wordguessinggame.guess('z')
		expect(wordguessinggame.check_if_game_over).to eq true 

	end 

end #describe 
