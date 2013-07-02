
class Secret_number


  attr_accessor :secret_number, :guesses_left, :next_guess
      


     
      def initialize(guesses_left, next_guess)
          	@secret_number = secret_number
           	@guesses_left = guesses_left
      		@next_guess = next_guess
      end


      def number
    		secret_number = rand(1..10)
			return secret_number
    		return guesses_left
    	end


	def try_again(guesses_left,next_guess)

        puts "Sorry, that's not it..."
        puts "You have #{guesses_left} #{guesses_left > 1 ? 'guesses' : 'guess'} left." if guesses_left > 1
        puts "Guess #{next_guess}!" if guesses_left > 0
 

      end

     


end