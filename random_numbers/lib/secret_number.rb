class Secret_number


  attr_accessor :secret_number, :guesses_left, :next_guess
      


     
      def initialize
          	@secret_number = secret_number
           	@guesses_left = guesses_left
      		@next_guess = next_guess

      end


      def number
    		secret_number = rand(1..10)
    		guesses_left = 3
    		return secret_number
    		return guesses_left
    		
    	end


	def try_again(guesses_left,next_guess)

        puts "Sorry, that's not it..."
        puts "You have #{guesses_left} tries left." 
        puts guesses_left
        puts next_guess
      end


    



end