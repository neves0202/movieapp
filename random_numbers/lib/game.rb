require_relative 'secret_number.rb'	#creates a link to the Secret Number class.


class Game

attr_accessor :secret_number, :guesses_left, :guess, :number, :next_guess
      


     
      def initialize(secret_number, guesses_left)
            @secret_number = secret_number
            @guesses_left = guesses_left
            @guess = guess
            @next_guess = next_guess
      end


   

def sec

 pl = Secret_number.new(guesses_left,next_guess)
	



 while @guesses_left > 0
        puts "What's your guess?"
        guess = gets.strip.to_i

      if guess == secret_number
        puts "YOU WON!"
        exit
      elsif guess > secret_number
        @guesses_left -= 1
        pl.try_again(@guesses_left, "lower")
      elsif guess < secret_number
        @guesses_left -= 1 
        pl.try_again(@guesses_left, "higher")
      end
      end

  
end

end
