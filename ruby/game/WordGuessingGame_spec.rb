require_relative 'WordGuessingGame'

describe WordGuessingGame do 
	let (:wordguessinggame) { WordGuessingGame.new('hello')}

	it 'Creates a valid class' do
		expect(word_guess).not_to be_falsey 
	end 

	it "initializes game state should be false to signify game is still running" do 
		expect(WordGuessingGame.is_over).to be_falsey 
	end

	it "creates a new game with the inputted string word as letters and stores it as an array" do 
		expect(WordGuessingGame.word_letters). to eq %W(h e l l o)
	end 

	it "checks if the letter guessed is in the right format" do 
		expect(WordGuessingGame.letter_guessed).to be_string 
	end 

		it "sets number of chances to length of word" do
		expect(WordGuessingGame.chances).to eq (5)
	end 

	it "Guessesinggame.guess should compare guesses with stored array" do 
		expect WordGuessingGame.guess('h'). to eq "h _ _ _ _"
		expect WordGuessingGame.guess('l'). to eq "h _ l l _"
	end 

	it "sets number of guesses made so far to Guessinggame.count" do 
		expect WordGuessingGame.count. to eq (1)
		expect WordGuessingGame.count. to eq (2)
	end 

	it "sets game as over when guesses <1" do 
		WordGuessingGame.guess('hello')
		guesses <1  
		expect{WordGuessingGame.is_over}.to change{WordGuessingGame.is_over}.from(false).to(true)
	end 

	it "sets game as over when the user wins" do 
		WordGuessingGame.guessed('hello')
		expect{WordGuessingGame.is_over}.to change{WordGuessingGame.is_over}.from(false).to(true)
	end 

end #describe 
