#Release 0 & Release 1
class Puppy

#Initialize
  def initialize
    puts "Initializing new puppy instance ..."
  end

#fetch method
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

#Woof method
  def speak(amt)
    amt.times { puts 'Woof!' }
  end

#Roll over method
  def roll_over
    puts '*rolls over*'
  end

#Dog years conversion method
  def dog_years(human_year)
    puts "#{human_year * 7} dog years old."
  end

#Own Method "High Five"
  def high_five
    puts '*reaches up with paws*'
  end

end

spike = Puppy.new

spike.fetch('Ball')
spike.speak(4)
spike.roll_over
spike.dog_years(5)
spike.high_five
# spike.initalize

#Release 2
class Basketball_player

  def initialize
    puts "A new player comes in for practice..."
  end

  def jump_shot
    success = rand(10)
    if success > 5
      puts "Jump shot goes in!"
    else
      puts "Missed the shot..."
    end
  end

  def dribble
    success = rand(10)
    if success > 2
      puts "Pounds the ball to the ground repeatedly"
    else
      puts "woops! Lost the ball..."
    end
  end

end

team = []

50.times { team << Basketball_player.new }
# p team

team.each_with_index do |player, index|
  puts "-- Player #{index + 1} --"
  player.dribble
  player.jump_shot
end