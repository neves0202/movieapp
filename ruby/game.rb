class Game

    attr_accessor :secret_number :guesses_left :next_guess
      


     
      def initialize
            @secret_number = secret_number
            @guesses_left = guesses_left
            @next_guess = next_guess

      end


 while guesses_left > 0
        puts "What's your guess?"
        guess = gets.strip.to_i

      if guess == secret_number
        puts "YOU WON!"
        exit
      elsif guess > secret_number
        guesses_left -= 1
        try_again(guesses_left, "lower")
      elsif guess < secret_number
        guesses_left -= 1 
        try_again(guesses_left, "higher")
      end
      end

  puts "Game over. You didn't correctly guess the number. It was #{secret_number}, duh."


end