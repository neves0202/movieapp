require_relative 'lib/player.rb' #creates a link to the Player class.
require_relative 'lib/test.rb'	#creates a link to the Secret Number class.
require_relative 'lib/secret_number.rb'	#creates a link to the Secret Number class.
require_relative 'lib/game.rb'	#creates a link to the Secret Number class.

def show_message
	puts "Welcome to the secret number game!"
	puts "This game was created by Neves"
	puts
end



show_message


puts "What's your name?"
name = gets.strip.capitalize

guesses_left = 3


player = Player.new(name)
test = Test.new(name)
secret_number = Secret_number.new(secret_number,guesses_left)
game = Game.new(secret_number.number,guesses_left)



puts "#{test.name}"




test.tell(name)


secret_number.number



puts "#{secret_number.guesses_left}"

game.sec

puts "Game over. You didn't correctly guess the number. It was #{secret_number.number}, duh."




