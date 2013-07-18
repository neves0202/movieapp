#!/usr/bin/ruby -w
puts ""
puts "Hi, welcome to the game"
puts ""
puts "#################### RANDOM NUMBERS ####################"
puts ""
puts "Do you wish to continue, type yes or no"
answer = gets.chomp
if answer == "yes"
	puts "Please enter your name"
	name = gets.chomp

	puts "Hi #{name}"
	sleep 1
  	puts ""
  	puts "Here are some rules of the game"
  	puts "1. You must guess a number between 1 and 10"
  	puts "1. You have 3 tries to do so"
  	sleep 1
  	val = 1
  	answer = "incorrect"
  	val=1
loop do
    if answer == "incorrect"
  	 num = (1 + rand(10)).to_s
  	 puts ""
  	 puts "Please think of a random number between 1 to 10 and enter"
  	 ran = gets.chomp
  		if ran == num
        puts "Congratulation #{name} you have guessed the number. It was #{num}"
  		  answer = "correct"
  		else
  		  puts "Better luck next time."
        puts "You have #{3-val} guesses before the game is over. Enter another number"
        val+=1
  		end

	else 

	end
    break if val==4 or answer == "correct"
end
end
puts ""
sleep 1
puts "#################### GAME OVER ####################"


