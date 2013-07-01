require_relative 'lib/player.rb' #creates a link to the Player class.
require_relative 'lib/test.rb'	#creates a link to the Secret Number class.
require_relative 'lib/secret_number.rb'	#creates a link to the Secret Number class.



def show_message
	puts "Welcome to the secret number game!"
	puts "This game was created by Neves"
	puts
end



show_message


puts "What's your name?"
name = gets.strip.capitalize

player = Player.new(name)
test = Test.new(name)
secret_number = Secret_number.new
guesses_left = Secret_number.new
next_guess = Secret_number.new



puts "#{test.name}"




test.tell(name)


secret_number.number

secret_number.try_again(guesses_left,next_guess)




